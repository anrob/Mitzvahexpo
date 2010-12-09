# Necessary to run on Site5
set :use_sudo, false
set :group_writable, false
 
# Less releases, less space wasted
set :keep_releases, 1
 
# The mandatory stuff
set :application, "mitzvahexpo"
set :user, "mpowermp" 

set :public_html, "/home/#{user}/mitzvahexpo/#{application}"


#set :rails_apps_home, "rails/webapps"
 
set :repository,  "https://sofresh.svn.beanstalkapp.com/mitzvahexpo/"
 
# SCM information
set :scm_username, "anrob"
set :scm_password, "shaina"
#Proc.new { CLI.password_prompt "SVN Password: "}
 
# This is related to site5 too.
set :deploy_to, "/home/#{user}/myapps/#{application}"
 
role :app, "mitzvahexpo.com"
role :web, "mitzvahexpo.com"
role :db,  "mitzvahexpo.com", :primary => true
 
 
# In the deploy namespace we override some default tasks and we define
# the site5 namespace.
namespace :deploy do
  desc <<-DESC
    Deploys and starts a `cold' application. This is useful if you have not \
    deployed your application before, or if your application is (for some \
    other reason) not currently running. It will deploy the code, run any \
    pending migrations, and then instead of invoking `deploy:restart', it will \
    invoke `deploy:start' to fire up the application servers.
  DESC
  # NOTE: we kill public_html so be sure to have a backup or be ok with this application
  # being the default app for the domain.
  task :cold do
    update  
    #site5::link_public_html
    #symlink_shared
    
    run "touch #{current_path}/#{application}/tmp/restart.txt"
    #load_schema
  end 
  
  task :load_schema, :roles => :app do
       run "cd #{current_path}/#{application}; rake db:schema:load RAILS_ENV=production" 
        #run "cd #{current_path}/#{application}; rake db:reset"
        #run "rake RAILS_ENV=production db:schema:load" 
  end
  
  desc "Symlink shared configs and folders on each release."
    task :symlink_shared do
      run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
      #run "ln -nfs #{shared_path}/assets #{release_path}/public/assets"
    end
 
  desc <<-DESC
    Site5 version of restart task.
  DESC
  task :restart do
    #site5::kill_dispatch_fcgi 
    run "touch #{current_path}/#{application}/tmp/restart.txt"
  end 
  
  desc <<-DESC
  DB migrate.
  DESC
  task :migrate do
      run "cd #{current_path}/#{application};  rake db:migrate RAILS_ENV=production"
      run "touch #{current_path}/#{application}/tmp/restart.txt" 
  end
 
  namespace :site5 do
    desc <<-DESC
      Fix the Symlink
    DESC
    task :link_public_html do
     
     #run "ln -s myapps/#{application}/current/public/ #{public_html}" 
     ### This is a good one  
     run "cd /home/#{user}; rm -r mitzvahexpo; ln -s #{current_path}/#{application}/public ~/mitzvahexpo"
     #run "cd /home/#{user}; ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"   
     #run "ln -s ~/myapps/citymenus/current/public ~/public_html"  
       run "touch #{current_path}/#{application}/tmp/restart.txt" 
     end
     
 
 
    desc <<-DESC
      Kills Ruby instances on Site5
    DESC
    task :kill_dispatch_fcgi do
      #run "skill -u #{user} -c ruby"
      run "touch #{current_path}/#{application}/tmp/restart.txt" 
    end
  end
end   
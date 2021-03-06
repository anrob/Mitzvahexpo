# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
    
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password  
  
  helper_method :admin?  
  
  def default_url_options(options = nil)
    {:format => "html"}
  end

   protected

     def authorize
       unless admin?
         flash[:error] = "Unauthorized Access"
         redirect_to dashboard_path
         false
       end
     end
     def admin?
       if user_signed_in?
         current_user.email == 'anrob@mac.com'
       end
     end
     # Scrub sensitive parameters from your log
     # filter_parameter_logging :password
end

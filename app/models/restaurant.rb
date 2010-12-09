class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state, :zip, :phone_number, :website, :category, :subcategory, :fax, :id, :feature_list, :video_code, :photo
   cattr_reader :per_page
   @@per_page = 9 
   acts_as_voteable
   acts_as_taggable
   acts_as_taggable_on :feature 
   has_friendly_id :name, :use_slug => true 
   acts_as_views_count
   has_many :reviews 
   has_attached_file :photo, :styles => { :tiny => "150x150", :frontpage => "300x100", :small => "200x200#", :large => "500x500>" }, :default_url => "/:class/:attachment/../../images/missing.png" 
    Paperclip.options[:command_path] = "/opt/local/bin" 
end

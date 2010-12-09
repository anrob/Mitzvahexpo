class Article < ActiveRecord::Base
  attr_accessible :title, :body 
  validates_presence_of [:title, :body], :on => :create, :message => "can't be blank" 
   has_friendly_id :title, :use_slug => true
end

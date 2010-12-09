class Review < ActiveRecord::Base  
  belongs_to :restaurant
  belongs_to :user
  validates_presence_of [:title,:body], :on => :create, :message => "can't be blank"
end

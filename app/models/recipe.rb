class Recipe < ActiveRecord::Base
  attr_accessible :name, :prep_time, :ready_time, :serving, :ingredient, :direction
   has_friendly_id :name, :use_slug => true
end

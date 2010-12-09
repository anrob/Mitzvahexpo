ActionController::Routing::Routes.draw do |map|
  map.resources :videos, :recipes, :articles, :reviews
  map.resources :restaurants , :has_many => :reviews, :as => :vendors  
    
 

  map.devise_for :users
 

  
  #map.resources :restaurants, :member => {:rate => :post} 
  map.root :controller => "restaurants"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

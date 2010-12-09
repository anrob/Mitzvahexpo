# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper 
  
  def alltags
       @taglist = Restaurant.tag_counts_on(:feature, :order => 'name') # returns all the tags used  
       @tagcount = Restaurant.feature_counts 
  end
  
  def ariclefront
   @articlefront = Article.find(:last) 
  end  
  
  def articlelist
      @articles = Article.all
  end 
  
  def recipelist
     @recipes = Recipe.all
  end
end

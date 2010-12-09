 Tag.delete_all
  open("db/typesoffood.txt") do |countries|
   countries.read.each_line do |country|
     name = country.chomp!
     Tag.create!( :name => name )
   end
 end

Tagging.delete_all
Tag.all.each do |taggin|
   Tagging.populate(1...5) do |tagit|
   tagit.tag_id = taggin.id
   tagit.taggable_type = "Restaurant"
   tagit.context = "feature"
   ids = Restaurant.all
   Restaurant.find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
   tagit.taggable_id = ids
 
  taggin.save
end

end
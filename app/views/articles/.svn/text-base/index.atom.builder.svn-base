atom_feed do |feed|
feed.title("Menu Marker")
feed.updated(@articles.first.created_at)

@articles.each do |article|
   feed.entry(article) do |entry|
   entry.title(article.title)
   entry.content(simple_format(article.body),  :type => 'html')
end
end
end
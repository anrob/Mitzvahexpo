module RestaurantsHelper  
include ActsAsTaggableOn  

def display_youtube_videos(videos)
            html = ""
            html += "<div id='videoplay'>"
            html += "<object width=\"320\" height=\"240\"><param name=\"movie\" value=\"http://www.youtube.com/v/#{videos}\"</param><param name=\"allowFullScreen\" value=\"true\"></param><embed src=\"http://www.youtube.com/v/#{videos}\" type=\"application/x-shockwave-flash\"  allowfullscreen=\"true\"  width=\"320\" height=\"240\"></embed></object>"
            html += "</div>"
      return html
  end 
end
                          

           
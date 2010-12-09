 require 'youtube_g'
class VideosController < ApplicationController 
   before_filter :authenticate_user!, :except => [:index, :show] 
  def index
    vid = YouTubeG::Client.new
    @videos = Video.find(:all)
    @button = @videos.each do |i| i.vid_id end
   @videot = vid.videos_by(:query => @button )   
      @video = Video.find(:first) 
       @videof = vid.videos_by(:query => @video.vid_id)
    
  end
  
  def show 

    @video = Video.find(params[:id])
    vid = YouTubeG::Client.new
     # puts vid.group.content[0].url 
     @videos = vid.videos_by(:query => @video.vid_id)
  end
  
  def new
    @video = Video.new
  end
  
  def create
    @video = Video.new(params[:video])
    if @video.save
      flash[:notice] = "Successfully created video."
      redirect_to @video
    else
      render :action => 'new'
    end
  end  
  
  def list
    vid = YouTubeG::Client.new
    @video = vid.videos_by(:categories => params[:id], :max_result_count => 5)
  end
  
  def edit
    @video = Video.find(params[:id])
  end
  
  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      flash[:notice] = "Successfully updated video."
      redirect_to @video
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:notice] = "Successfully destroyed video."
    redirect_to videos_url
  end
end

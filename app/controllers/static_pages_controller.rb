class StaticPagesController < ApplicationController
  require 'flickr'
  
  def index
    if params[:user_id]
      flickr = Flickr.new
      @photos = flickr.photos.search(user_id: params[:user_id])
    end
  end

end

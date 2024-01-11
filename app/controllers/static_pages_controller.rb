class StaticPagesController < ApplicationController
  def index
    flickr = Flickr.new
    @photos = []
    @photos = flickr.people.getPhotos user_id: params[:user_id], extras: "url_o" if params[:user_id]
  end
end

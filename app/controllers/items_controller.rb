class ItemsController < ApplicationController
  def index
  end
  
  def show
    @item = Item.find(params[:id])
    @photos = @item.photos
    @first_photo = @photos.first
  end
end

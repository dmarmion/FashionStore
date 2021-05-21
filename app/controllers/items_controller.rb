class ItemsController < ApplicationController
  include ItemsHelper
  
  def index
  end
  
  def show
    @item = Item.find(params[:id])
    @photos = @item.photos
    @first_photo = @photos.first
  end
  
  def save
    @item = Item.find(params[:id])
    
    # The saved list stores the IDs of saved items, separated by semicolons
    
    # Add the item to the saved list if isn't in it, or remove the item from the list if it is
    if cookies[:saved_list] && cookies[:saved_list] != ""
      if in_saved_list?(@item)
        saved_items = (cookies[:saved_list].split(';') - [@item.id.to_s]).join(';')
        cookies[:saved_list] = {value: saved_items,
                            expires: 1.week.from_now.utc,
                            path: '/'}
      else
        cookies[:saved_list] = {value: cookies[:saved_list].to_s + ';' + @item.id.to_s,
                                expires: 1.week.from_now.utc,
                                path: '/'}
      end
    else
      cookies[:saved_list] = {value: @item.id.to_s,
                              expires: 1.week.from_now.utc,
                              path: '/'}
    end
    
    # Send the user back to the previous page
    redirect_back(fallback_location: root_path)
  end
end

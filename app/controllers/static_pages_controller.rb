class StaticPagesController < ApplicationController
  def home
  end
  
  def saved_list
    @saved_items = []
    item_ids = cookies[:saved_list].to_s.split(';')
    
    item_ids.each do |id|
      @saved_items << Item.find_by(id: id)
    end
  end
  
  def support
  end
end

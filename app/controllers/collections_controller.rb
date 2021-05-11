class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id])
    @items = @collection.items
  end
end

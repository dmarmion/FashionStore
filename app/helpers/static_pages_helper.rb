module StaticPagesHelper
  # Get a random item that is not in the saved list. Returns nil if there are no
  # unsaved items remaining.
  def random_unsaved_item
    saved_ids = cookies[:saved_list].to_s.split(';')
    unsaved_ids = []
    
    Item.all.each do |item|
      if !saved_ids.include?(item.id.to_s)
        unsaved_ids << item.id.to_s
      end
    end
    
    chosen_id = unsaved_ids.sample
    
    if chosen_id
      return Item.find_by(id: chosen_id)
    else
      return nil
    end
  end
  
  # Get a list of the n most popular items
  def most_popular_items(n)
    most_popular = []
    
    # All items, sorted by popularity from highest to lowest
    all_items = Item.all.sort { |a, b| b.popularity <=> a.popularity }
    
    n.times do
      most_popular << all_items.shift
    end
    
    return most_popular
  end
end

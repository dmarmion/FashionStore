module StaticPagesHelper
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

module ItemsHelper
  def in_saved_list?(item)
    saved = false
    
    # The saved list stores the IDs of saved items, separated by semicolons
    if cookies[:saved_list]
      saved = cookies[:saved_list].to_s.split(';').include?(item.id.to_s)
    end
    
    return saved
  end
end

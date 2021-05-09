require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def setup
    @item = Item.new(name: "T-Shirt", description: "A t-shirt", price: 19.99, popularity: 50, startsellingdate: 20210509)
  end
  
  test "should be valid" do
    assert @item.valid?
  end
  
  test "name should be present" do
    @item.name = ""
    assert_not @item.valid?
  end
  
  test "description should be present" do
    @item.description = ""
    assert_not @item.valid?
  end
  
  test "price should be present" do
    @item.price = nil
    assert_not @item.valid?
  end
  
  test "price should be a number" do
    @item.price = "abc"
    assert_not @item.valid?
  end
  
  test "popularity should be present" do
    @item.popularity = nil
    assert_not @item.valid?
  end
end

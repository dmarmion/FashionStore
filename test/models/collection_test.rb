require 'test_helper'

class CollectionTest < ActiveSupport::TestCase
  def setup
    @collection = Collection.new(name: "Clothes")
  end
  
  test "name should be present" do
    @collection.name = "  "
    assert_not @collection.valid?
  end
end

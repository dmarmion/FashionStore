class CreateCollectionsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :collections_items, id: false do |t|
      t.integer :collection_id, null: false
      t.integer :item_id, null: false
    end
    
    add_index :collections_items, [:collection_id, :item_id], unique: true
  end
end

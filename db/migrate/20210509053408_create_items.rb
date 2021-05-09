class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :popularity
      t.date :startsellingdate

      t.timestamps
    end
  end
end

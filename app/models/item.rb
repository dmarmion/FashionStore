class Item < ApplicationRecord
  has_and_belongs_to_many :collections
  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :popularity, presence: true
end

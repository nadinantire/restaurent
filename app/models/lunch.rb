class Lunch < ApplicationRecord
  belongs_to :restorent, optional: true
  validates :price,:name,presence: true
end

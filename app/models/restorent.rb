class Restorent < ApplicationRecord
  belongs_to :user
  has_many :lunches, dependent: :destroy
  has_many :breakfasts, dependent: :destroy

  accepts_nested_attributes_for :lunches, reject_if: :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :breakfasts, reject_if: :all_blank, :allow_destroy => true
end

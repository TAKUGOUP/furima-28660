class Purchase < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :item
  
  validates :postal_code, :city, :number, :telephone_number, presence: true
  validates :prefecture_id, numericality: { other_than: 1 } 
end

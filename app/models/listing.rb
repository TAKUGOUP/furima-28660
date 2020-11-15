class Listing < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to : category, status, delivery_fee, prefecture, days_to_ship 

  validates :name, :content, presence: true

  validates :category_id, :status_id, :delivery_fee_id, :prefecture_id, :days_to_ship_id, numericality: { other_than: 1 } 

end

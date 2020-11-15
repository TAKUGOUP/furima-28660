class Listing < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to : category, status, delivery_fee, ship_from, days_to_ship 

  validates :name, :content, presence: true

  validates :category_id, :status_id, :delivery_fee_id, :ship_from, :days_to_ship, numericality: { other_than: 1 } 

end

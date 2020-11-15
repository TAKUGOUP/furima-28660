class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string     :name               , null: false
      t.text       :content            , null: false
      t.integer    :category_id        , null: false
      t.integer    :status_id          , null: false
      t.integer    :delivery_fee_id    , null: false
      t.integer    :prefecture_id       , null: false
      t.integer    :days_to_ship_id    , null: false
      t.integer    :price              , null: false
      t.timestamps
    end
  end
end

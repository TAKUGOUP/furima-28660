# テーブル設計

## users テーブル

| Column    | Type    | Options     |
| --------- | ------- | ----------- |
| nickname  | string  | null: false |
| email     | string  | null: false |
| user_name | string  | null: false |
| password  | string  | null: false |
| birthday  | string  | null: false |

### Association

- has_many :items
- has_many :purchase_data

## items テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| image        | string     | null: false                    |
| item_name    | string     | null: false                    |
| price        | string     | null: false                    |
| user_id      | references | null: false, foreign_key: true |

### Association

has_one :purchase_data
belongs_to :users

## purchase_data テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| purchase_data | string     | null: false                    |
| user_id       | references | null: false, foreign_key: true |
| item_id       | references | null: false, foreign_key: true |

### Association

belongs_to :users
belongs_to :items
has_one :shipping_address

## shipping_address テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| prefecture       | string     | null: false                    |
| city             | string     | null: false                    |
| number           | string     | null: false                    |
| building_name    | string     | null: false                    |
| telephone_number | integer    | null: false                    |
| purchase_data_id | references | null: false, foreign_key: true |

### Association

belongs_to :purchase_data
# テーブル設計

## users テーブル

| Column                   | Type    | Options     |
| ------------------------ | ------- | ----------- |
| nickname                 | string  | null: false |
| email                    | string  | null: false |
| user_name_last_kanji     | string  | null: false |
| user_name_first_kanji    | string  | null: false |
| user_name_last_katakana  | string  | null: false |
| user_name_first_katakana | string  | null: false |
| encrypted_password       | string  | null: false |
| birthday                 | date    | null: false |

### Association

- has_many :items
- has_many :purchases_data

## items テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| content         | text       | null: false                    |
| category_id     | integer    | null: false                    |
| status_id       | integer    | null: false                    |
| delivery_fee_id | integer    | null: false                    |
| ship_from_id    | integer    | null: false                    |
| days_to_ship_id | integer    | null: false                    |
| price           | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

has_one :purchase_data
belongs_to :user

## purchase_data テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :item
has_one :shipping_address

## shipping_address テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    |
| number           | string     | null: false                    |
| building_name    | string     |                                |
| telephone_number | string     | null: false                    |
| purchase_data    | references | null: false, foreign_key: true |

### Association

belongs_to :purchase_data
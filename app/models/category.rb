class Category < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  has_many :category_purchases
  has_many :purchases, through: :category_purchases
end

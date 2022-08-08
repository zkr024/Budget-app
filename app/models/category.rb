class Category < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  has_many :purchases, through: :category_purchases

  validates :name, :icon presence: true
end

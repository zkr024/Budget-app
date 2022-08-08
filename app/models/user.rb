class User < ApplicationRecord
  has_many :categories, foreign_key: :author_id
  has_many :purchases, foreign_key: :author_id

  validates :first_name, :last_name, presence: true
end

class Post < ApplicationRecord
  # belongs_to :user
  has_many :comments, dependent: :destroy
  validates :body, presence: true,
                   length: { minimum: 2, maximum: 280 }
end

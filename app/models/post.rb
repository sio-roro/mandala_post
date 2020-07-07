class Post < ApplicationRecord
  validates :theme, presence: true
  has_many :mandalas, dependent: :destroy
  has_many :posts,dependent: :destroy
  belongs_to :user
end

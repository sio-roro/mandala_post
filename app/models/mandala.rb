class Mandala < ApplicationRecord
  validates :one, presence: true
  validates :two, presence: true
  validates :three, presence: true
  validates :four, presence: true
  validates :five, presence: true
  validates :six, presence: true
  validates :seven, presence: true
  validates :eight, presence: true
  
  belongs_to :post
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
end

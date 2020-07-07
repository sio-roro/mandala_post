class Like < ApplicationRecord
  belongs_to :mandala
  belongs_to :user

  validates_uniqueness_of :mandala_id, scope: :user_id
end

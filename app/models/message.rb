class Message < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :asc) }
  validates :user_id, presence: true
  # validates :receiver_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end

class Question < ApplicationRecord
  belongs_to :user

  validates :text, presence: true, length: { maximum: 255 }
  validates :user, :text, presence: true
end

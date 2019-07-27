class Question < ApplicationRecord
  belongs_to :user

  validates :text, presence: true
  validates :user, :text, presence: true
end

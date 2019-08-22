class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true
  has_many :question_tags, dependent: :destroy
  has_many :tags, through: :question_tags

  after_save :create_update_tags

  validates :text, presence: true, length: { maximum: 255 }
  validates :user, :text, presence: true

  def create_update_tags
    self.tags.clear
    extract_tags.each do |tag_name|
      self.tags << Tag.find_or_create_by(name: tag_name.downcase)
    end
  end

  def extract_tags
    input_string = if answer.present?
      text + ' ' + answer
    else
      text
    end

    input_string.scan(/#[[:word:]-]+/).uniq.map { |tag_name| tag_name.gsub('#', '') }
  end
end

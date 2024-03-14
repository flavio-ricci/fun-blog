class Article < ApplicationRecord
  validates :title, presence: true
  validate :custom_validation
  belongs_to :author
  scope :published, -> { where.not(published_at: nil) }

  private

  def custom_validation
    # ...
  end
end
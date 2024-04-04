class Article < ApplicationRecord
  validates :title, :slug, presence: true
  validates :slug, uniqueness: true
  validate :custom_validation

  belongs_to :author
  scope :published, -> { where.not(published_at: nil) }
  before_validation :set_slug

  private

  def custom_validation
    # ...
  end

  def set_slug
    self.slug = title.parameterize
  end
end
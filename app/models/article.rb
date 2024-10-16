class Article < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :body, presence: true

  def image_or_image_url_present
    unless images.attached? || image_url.present?
      errors.add(:base, "Please provide either an image file or an image URL")
    end
  end
end

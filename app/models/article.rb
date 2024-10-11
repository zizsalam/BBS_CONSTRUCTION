class Article < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :body, presence: true

  def display_image
    if image.attached?
      image
    else
      'default-article-image.jpg' # Make sure this default image exists in app/assets/images/
    end
  end

  def parsed_content
    MarkdownParser.new(body).parse
  end

end

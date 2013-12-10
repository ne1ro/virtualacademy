class Post < ActiveRecord::Base
  validates :title, :body, :published, presence: true
  validates :title, uniqueness: true
  validates :title, length: {minimum: 3, maximum: 120}
  validates :title, length: {minimum: 3, maximum: 120}

  # Convert to slug url
  def to_param
    title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end

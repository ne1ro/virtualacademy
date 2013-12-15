class Course < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, uniqueness: true, length: {maximum: 20, tokenizer: lambda { |str| str.scan(/\w+|[а-яА-Я]+/)}, too_long: "must have at most %{count} words"}
  validates :description, presence: true
  validates :body, presence: true
  validates :cost, numericality: {greater_than_or_equal_to: 0 }

  # Convert to slug url
  def to_param
    title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end

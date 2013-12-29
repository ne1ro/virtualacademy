class Lesson < ActiveRecord::Base
  belongs_to :course
  validates :title, presence: true, uniqueness: true, length: {maximum: 20, tokenizer: lambda { |str| str.scan(/\w+|[а-яА-Я]+/)}, too_long: "must have at most %{count} words"}
  validates :description, presence: true
  validates :body, presence: true
  validates :number, numericality: {less_than_or_equal_to: 1, only_integer: true}

  # Convert to slug url
  def to_param
    title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end

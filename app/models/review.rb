class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  validates :text, presence: true
  validates :rate, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: 10}
end

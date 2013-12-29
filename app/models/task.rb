class Task < ActiveRecord::Base
  belongs_to :lesson
  validates :title, presence: true
  validates :body, presence: true
  validates :number, numericality: {only_integer: true, greater_than: 0}
end

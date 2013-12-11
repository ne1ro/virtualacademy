class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :trackable, :validatable, :omniauthable, :confirmable

  # Here comes validations
  validates :nickname, presence: true, format: {with: /\A[a-z0-9\-_\.]*\z/, message: 'only downcase letters, numbers, dots and underscores allowed'},
    length: {minimum: 4, maximum: 36, message: 'should have at least 4 symbols and 36 as max'}, uniqueness: true

  validates :location, format: {with: /\A[a-zA-Zа-яА-Я0-9, \-_\.]*\z/, message: 'should be only letters, numbers, dots and underscores'}, 
  length: {in: 2..250, tokenizer: lambda { |str| str.scan(/\w+|[а-яА-Я]+/)}, too_short: "must have at least %{count} words", too_long: "must have at most %{count} words"}

  validates :about, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed" }

  validates :money, presence: true, numericality: {greater_than_or_equal_to: 0 }

  validates :fullname, presence: true, length: {in: 2..10, tokenizer: lambda { |str| str.scan(/\w+|[а-яА-Я]+/)},
    too_short: "must have at least %{count} words", too_long: "must have at most %{count} words"}, 
    format: {with: /\A[a-zA-Zа-яА-Я ]*\z/, message: 'should have only letters and spaces'}

  validates :email, format: {with: /\A\S+@\S+\.\S+\z/, message: 'should be valid email address'}, uniqueness: true

  end

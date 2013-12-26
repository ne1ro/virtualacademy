class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :trackable, :validatable, :omniauthable

  # Here comes validations
  validates :nickname, presence: true, format: {with: /\A[a-z0-9\-_\.]*\z/, message: 'only downcase letters, numbers, dots and underscores allowed'}

  validates :location, format: {with: /\A[a-zA-Zа-яА-Я0-9, \-_\.]*\z/, message: 'should be only letters, numbers, dots and underscores'}

  validates :about, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed" }

  validates :fullname, presence: true, format: {with: /\A[a-zA-Zа-яА-Я ]*\z/, message: 'should have only letters and spaces'}

  validates :email, format: {with: /\A\S+@\S+\.\S+\z/, message: 'should be valid email address'}, uniqueness: true

  end

class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  has_many :topics
  has_many :posts

  has_secure_password

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :index, presence: true, length: { minimum: 6, maximum: 6 }, uniqueness: true

end

class User < ActiveRecord::Base
  has_many :recipes
  validates :firstName, presence: true, length: { minimum: 3, maximum: 12 }
  validates :lastName, presence: true, length: { minimum: 2, maximum: 18 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = email.downcase }
  validates :email, presence:true, length: { maximum: 54 },uniqueness: { case_sensitive: false },
format: { with: VALID_EMAIL_REGEX }
end
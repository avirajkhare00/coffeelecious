class Recipe < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true, length: {minimum: 3, maximum: 20}
  validates :summary, presence: true, length: {minimum: 30, maximum: 250}
  validates :directions, presence: true, length: {minimum: 50, maximum: 350}
end
class Workout < ApplicationRecord
  belongs_to :user
  has_many :sessions
  has_many :competitions, through: :sessions
end

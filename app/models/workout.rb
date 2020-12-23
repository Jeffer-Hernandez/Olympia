class Workout < ApplicationRecord
  belongs_to :user
  has_many :training_sessions
  has_many :competitions, through: :training_sessions
end

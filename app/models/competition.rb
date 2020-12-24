class Competition < ApplicationRecord
  belongs_to :user
  has_many :training_sessions
  has_many :workouts, through: :training_sessions

  validates :title, :description, :category, presence: true


end

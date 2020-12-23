class User < ApplicationRecord

    has_many :competitions
    has_many :created_workouts, foreign_key: "user_id", class_name: "Workout"
    has_many :completed_workouts, through: :competitions, source: :workouts
    has_many :training_sessions
    
    
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true

end

class User < ApplicationRecord

    has_many :competitions
    has_many :created_workouts, foreign_key: "user_id", class_name: "Workout"
    has_many :completed_workouts, through: :competitions, source: :workouts
    has_many :training_sessions, through: :competitions
    
    
    has_secure_password
    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true

    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.username = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
    end



end

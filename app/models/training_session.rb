class TrainingSession < ApplicationRecord
  belongs_to :competition
  belongs_to :workout

  scope :by_workout, -> (workout_id) {where("workout_id = ?", workout_id)}

  validates :date, presence: true


  def datetime
    self.date.strftime("%A, %b %d") if self.date
    #self.date.try(:strftime, "%A, %b %d")
  end

  def username
    @username ||= self.competition.try(:user).try(:username)
  end


end

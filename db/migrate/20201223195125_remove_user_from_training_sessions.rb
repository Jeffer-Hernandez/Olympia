class RemoveUserFromTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:training_sessions, :user, index: true, foreign_key: true)
  end
end

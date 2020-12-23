class RenameSessionsToTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    rename_table :sessions, :training_sessions
  end
end

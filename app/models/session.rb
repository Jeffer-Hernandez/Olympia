class Session < ApplicationRecord
  belongs_to :competition
  belongs_to :workout
end

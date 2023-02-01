class Day < ApplicationRecord
  belongs_to :line

  VALID_STATUSES = ['on', 'off', 'maybe']
end

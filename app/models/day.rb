class Day < ApplicationRecord
  belongs_to :line

  VALID_STATUSES = ['on', 'off', 'maybe']

  def all_times
    [
      time1,
      time2,
      time3,
      time4,
      time5,
      time6,
      time7,
      time8,
      time9,
      time10,
      time11,
      time12,
      time13,
      time14,
      time15,
      time16,
      time17,
      time18,
      time19,
      time20,
      time21,
      time22,
      time23,
      time24
    ]
  end

  def status_for(time)
    all_times[time]
  end
end

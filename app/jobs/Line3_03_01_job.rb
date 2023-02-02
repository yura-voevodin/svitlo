class Line30301Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    day = Day.where(line_id: 3, date: Date.today).first
    if day.nil?
      day = Day.new(date: Date.today, line_id: 3)
    end
    day.time1 = "maybe"
    day.time2 = "maybe"
    day.time3 = "off"
    day.time4 = "off"
    day.time5 = "on"
    day.time6 = "on"
    day.time7 = "off"
    day.time8 = "off"
    day.time9 = "off"
    day.time10 = "on"
    day.time11 = "on"
    day.time12 = "on"
    day.time13 = "off"
    day.time14 = "off"
    day.time15 = "off"
    day.time16 = "maybe"
    day.time17 = "on"
    day.time18 = "on"
    day.time19 = "off"
    day.time20 = "off"
    day.time21 = "off"
    day.time22 = "on"
    day.time23 = "on"
    day.time24 = "on"
    day.save
  end
  
end

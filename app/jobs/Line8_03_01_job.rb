class Line80301Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    day = Day.where(line_id: 8, date: Date.today).first
    if day.nil?
      day = Day.new(date: Date.today, line_id: 8)
    end
    day.time1 = "off"
    day.time2 = "on"
    day.time3 = "on"
    day.time4 = "on"
    day.time5 = "on"
    day.time6 = "on"
    day.time7 = "on"
    day.time8 = "off"
    day.time9 = "off"
    day.time10 = "off"
    day.time11 = "off"
    day.time12 = "on"
    day.time13 = "on"
    day.time14 = "on"
    day.time15 = "on"
    day.time16 = "on"
    day.time17 = "on"
    day.time18 = "on"
    day.time19 = "on"
    day.time20 = "on"
    day.time21 = "on"
    day.time22 = "off"
    day.time23 = "off"
    day.time24 = "off"
    day.save
  end
  
end

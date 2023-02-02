class Line50301Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    day = Day.where(line_id: 5, date: Date.today).first
    if day.nil?
      day = Day.new(date: Date.today, line_id: 5)
    end
    day.time1 = "on"
    day.time2 = "on"
    day.time3 = "on"
    day.time4 = "on"
    day.time5 = "off"
    day.time6 = "off"
    day.time7 = "off"
    day.time8 = "on"
    day.time9 = "on"
    day.time10 = "maybe"
    day.time11 = "off"
    day.time12 = "off"
    day.time13 = "off"
    day.time14 = "on"
    day.time15 = "on"
    day.time16 = "on"
    day.time17 = "off"
    day.time18 = "off"
    day.time19 = "off"
    day.time20 = "maybe"
    day.time21 = "on"
    day.time22 = "on"
    day.time23 = "off"
    day.time24 = "off"
    day.save
  end
  
end

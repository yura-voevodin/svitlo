class Line70301Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    day = Day.where(line_id: 7, date: Date.today).first
    if day.nil?
      day = Day.new(date: Date.today, line_id: 7)
    end
    day.time1 = "on"
    day.time2 = "on"
    day.time3 = "on"
    day.time4 = "on"
    day.time5 = "on"
    day.time6 = "on"
    day.time7 = "on"
    day.time8 = "on"
    day.time9 = "off"
    day.time10 = "off"
    day.time11 = "off"
    day.time12 = "off"
    day.time13 = "on"
    day.time14 = "on"
    day.time15 = "on"
    day.time16 = "off"
    day.time17 = "off"
    day.time18 = "off"
    day.time19 = "off"
    day.time20 = "on"
    day.time21 = "on"
    day.time22 = "on"
    day.time23 = "on"
    day.time24 = "on"
    day.save
  end
  
end

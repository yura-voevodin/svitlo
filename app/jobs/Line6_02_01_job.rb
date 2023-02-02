class Line60201Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    day = Day.where(line_id: 6, date: Date.today).first
    if day.nil?
      day = Day.new(date: Date.today, line_id: 6)
    end
    day.time1 = "on"
    day.time2 = "on"
    day.time3 = "off"
    day.time4 = "off"
    day.time5 = "maybe"
    day.time6 = "on"
    day.time7 = "on"
    day.time8 = "on"
    day.time9 = "off"
    day.time10 = "off"
    day.time11 = "off"
    day.time12 = "on"
    day.time13 = "on"
    day.time14 = "on"
    day.time15 = "off"
    day.time16 = "off"
    day.time17 = "off"
    day.time18 = "maybe"
    day.time19 = "on"
    day.time20 = "on"
    day.time21 = "off"
    day.time22 = "off"
    day.time23 = "off"
    day.time24 = "off"
    day.save
  end
  
end

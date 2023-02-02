class Line20301Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    day = Day.where(line_id: 2, date: Date.today).first
    if day.nil?
      day = Day.new(date: Date.today, line_id: 2)
    end
    day.time1 = "off"
    day.time2 = "off"
    day.time3 = "on"
    day.time4 = "on"
    day.time5 = "on"
    day.time6 = "on"
    day.time7 = "on"
    day.time8 = "off"
    day.time9 = "off"
    day.time10 = "off"
    day.time11 = "on"
    day.time12 = "on"
    day.time13 = "maybe"
    day.time14 = "off"
    day.time15 = "off"
    day.time16 = "off"
    day.time17 = "on"
    day.time18 = "on"
    day.time19 = "on"
    day.time20 = "off"
    day.time21 = "off"
    day.time22 = "off"
    day.time23 = "on"
    day.time24 = "on"
    day.save
  end
  
end

class Line71Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    date = '03.01.2023'.to_date
    line = 7

    day = Day.where(line_id: line, date: date).first
    if day.nil?
      day = Day.new(date: date, line_id: line)
    end
    
     # 0-1
    day.time1 = "on"
    # 1-2
    day.time2 = "on"
    # 2-3
    day.time3 = "on"
    # 3-4
    day.time4 = "on"
    # 4-5
    day.time5 = "on"
    # 5-6
    day.time6 = "on"
    # 6-7
    day.time7 = "on"
    # 7-8
    day.time8 = "on"
    # 8-9
    day.time9 = "off"
    # 9-10
    day.time10 = "off"
    # 10-11
    day.time11 = "off"
    # 11-12
    day.time12 = "off"
    # 12-13
    day.time13 = "on"
    # 13-14
    day.time14 = "on"
    # 14-15
    day.time15 = "on"
    # 15-16
    day.time16 = "off"
    # 16-17
    day.time17 = "off"
    # 17-18
    day.time18 = "off"
    # 18-19
    day.time19 = "off"
    # 19-20
    day.time20 = "on"
    # 20-21
    day.time21 = "on"
    # 21-22
    day.time22 = "on"
    # 22-23
    day.time23 = "on"
    # 23-24
    day.time24 = "on"
    day.save
  end
  
end

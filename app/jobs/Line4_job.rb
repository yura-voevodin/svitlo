class Line4Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    date = args.first[:date]
    line = 4

    day = Day.where(line_id: line, date: date).first
    if day.nil?
      day = Day.new(date: date, line_id: line)
    end
    
    # 0-1
    day.time1 = "on"
    # 1-2
    day.time2 = "on"
    # 2-3
    day.time3 = "off"
    # 3-4
    day.time4 = "off"
    # 4-5
    day.time5 = "maybe"
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
    day.time11 = "maybe"
    # 11-12
    day.time12 = "on"
    # 12-13
    day.time13 = "on"
    # 13-14
    day.time14 = "on"
    # 14-15
    day.time15 = "off"
    # 15-16
    day.time16 = "off"
    # 16-17
    day.time17 = "maybe"
    # 17-18
    day.time18 = "on"
    # 18-19
    day.time19 = "on"
    # 19-20
    day.time20 = "on"
    # 20-21
    day.time21 = "off"
    # 21-22
    day.time22 = "off"
    # 22-23
    day.time23 = "maybe"
    # 23-24
    day.time24 = "on"
    day.save
  end
  
end

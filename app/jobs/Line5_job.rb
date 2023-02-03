class Line5Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    date = args.first[:date]
    line = 5

    day = Day.where(line_id: line, date: date).first
    if day.nil?
      day = Day.new(date: date, line_id: line)
    end
    
    # 0-1
    day.time1 = "maybe"
    # 1-2
    day.time2 = "on"
    # 2-3
    day.time3 = "on"
    # 3-4
    day.time4 = "on"
    # 4-5
    day.time5 = "off"
    # 5-6
    day.time6 = "off"
    # 6-7
    day.time7 = "maybe"
    # 7-8
    day.time8 = "on"
    # 8-9
    day.time9 = "on"
    # 9-10
    day.time10 = "on"
    # 10-11
    day.time11 = "off"
    # 11-12
    day.time12 = "off"
    # 12-13
    day.time13 = "maybe"
    # 13-14
    day.time14 = "on"
    # 14-15
    day.time15 = "on"
    # 15-16
    day.time16 = "on"
    # 16-17
    day.time17 = "off"
    # 17-18
    day.time18 = "off"
    # 18-19
    day.time19 = "maybe"
    # 19-20
    day.time20 = "on"
    # 20-21
    day.time21 = "on"
    # 21-22
    day.time22 = "on"
    # 22-23
    day.time23 = "off"
    # 23-24
    day.time24 = "off"
    day.save
  end
  
end

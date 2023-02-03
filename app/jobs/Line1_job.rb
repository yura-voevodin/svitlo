class Line1Job < ApplicationJob
  queue_as :default
  
  def perform(*args)
    date = args.first[:date]
    line = 1

    day = Day.where(line_id: line, date: date).first
    if day.nil?
      day = Day.new(date: date, line_id: line)
    end

    # 0-1
    day.time1 = "off"
    # 1-2
    day.time2 = "off"
    # 2-3
    day.time3 = "on"
    # 3-4
    day.time4 = "on"
    # 4-5
    day.time5 = "on"
    # 5-6
    day.time6 = "maybe"
    # 6-7
    day.time7 = "off"
    # 7-8
    day.time8 = "off"
    # 8-9
    day.time9 = "on"
    # 9-10
    day.time10 = "on"
    # 10-11
    day.time11 = "on"
    # 11-12
    day.time12 = "maybe"
    # 12-13
    day.time13 = "off"
    # 13-14
    day.time14 = "off"
    # 14-15
    day.time15 = "on"
    # 15-16
    day.time16 = "on"
    # 16-17
    day.time17 = "on"
    # 17-18
    day.time18 = "maybe"
    # 18-19
    day.time19 = "off"
    # 19-20
    day.time20 = "off"
    # 20-21
    day.time21 = "on"
    # 21-22
    day.time22 = "on"
    # 22-23
    day.time23 = "on"
    # 23-24
    day.time24 = "maybe"
    day.save
  end
  
end

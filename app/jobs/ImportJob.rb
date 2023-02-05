require 'json'

class ImportJob < ApplicationJob
  queue_as :default
  
  def perform(*args)
    file = args.first
    file_data = File.read("data/#{file}")
    json = JSON.parse(file_data)

    date = json['date'].to_date
    json['queues'].each { |queue|

      id = queue['id']
      hours = queue['hours']

      day = Day.where(line_id: id, date: date).first
      if day.nil?
        day = Day.new(date: date, line_id: id)
      end

      day.time1 = hours[0]
      day.time2 = hours[1]
      day.time3 = hours[2]
      day.time4 = hours[3]
      day.time5 = hours[4]
      day.time6 = hours[5]
      day.time7 = hours[6]
      day.time8 = hours[7]
      day.time9 = hours[8]
      day.time10 = hours[9]
      day.time11 = hours[10]
      day.time12 = hours[11]
      day.time13 = hours[12]
      day.time14 = hours[13]
      day.time15 = hours[14]
      day.time16 = hours[15]
      day.time17 = hours[16]
      day.time18 = hours[17]
      day.time19 = hours[18]
      day.time20 = hours[19]
      day.time21 = hours[20]
      day.time22 = hours[21]
      day.time23 = hours[22]
      day.time24 = hours[23]
      day.save
    }
  end
end
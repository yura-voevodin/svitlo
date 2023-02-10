class Line < ApplicationRecord
  has_many :days

  def status_for(day, hour)
    return "" if day.nil?
    return day.status_for(hour)
  end

  def status_text_for(status)
    case status
    when "on"
      "черга з електропостачанням"
    when "off"
      "черга вимкнена"
    when "maybe"
      "можливі вимкнення"
    end
  end
end

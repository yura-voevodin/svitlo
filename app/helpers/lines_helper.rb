module LinesHelper

  def text_style_for(hour)
    if hour < Time.now.hour
      "text-muted"
    else
      "text-body-emphasis"
    end
  end

  def background_class_for(status)
    case status
    when "on"
      "bg-success"
    when "off"
      "bg-danger"
    when "maybe"
      "bg-warning"
    end
  end

  def badge_background_class_for(status)
    case status
    when "on"
      "text-bg-success"
    when "off"
      "text-bg-danger"
    when "maybe"
      "text-bg-warning"
    end
  end

  def opacity_for(hour)
    if hour < Time.now.hour
      "bg-opacity-25"
    else
      "bg-opacity-75"
    end
  end

  def border_for(time)
    if time == Time.now.hour
      "border border-info rounded-3"
    else
      ""
    end
  end

  def text_for(index)
    "#{(index)} - #{index + 1}"
  end
end

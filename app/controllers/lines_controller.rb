class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])

    p @line.name

    @line.days.each { |day|
      p day.date
      p day.line
    }
  end
end

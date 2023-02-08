class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])
    @day = Day.where(line: @line, date: Date.today).first
    @date = @day.present? ? @day.date : Date.today
    @current_status = @line.status_for(@day, Time.now.hour + 1)
    @next_day = Day.where(line: @line, date: Date.tomorrow).first
  end

  def next
    @line = Line.find(params[:id])
    @day = Day.where(line: @line, date: Date.tomorrow).first
    @date = @day.date
  end
end

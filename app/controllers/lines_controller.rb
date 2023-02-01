class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])
    @day = Day.where(line: @line, date: Date.today).first
  end
end

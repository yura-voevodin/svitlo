class MainController < ApplicationController
  def index
    @lines = Line.all
  end
end

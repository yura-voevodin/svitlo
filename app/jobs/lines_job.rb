class LinesJob < ApplicationJob
  queue_as :default
  
  def perform(*args)
    date = '04.02.2023'.to_date
    Line1Job.perform_now(date: date)
    Line2Job.perform_now(date: date)
    Line3Job.perform_now(date: date)
    Line4Job.perform_now(date: date)
    Line5Job.perform_now(date: date)
    Line6Job.perform_now(date: date)
    Line7Job.perform_now(date: date)
    Line8Job.perform_now(date: date)
  end
end
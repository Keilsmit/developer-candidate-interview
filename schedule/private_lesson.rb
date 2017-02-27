require 'erb'
require_relative 'data_parser'

class PrivateLesson

  attr_accessor :name,
                :training_type,
                :max_participants,
                :start_date,
                :start_time,
                :end_date,
                :end_time,
                :duration

  def initialize(name:, training_type:, max_participants:, start_date:, start_time:, end_date:, end_time:, duration:)
    @name = name
    @training_type = training_type
    @max_participants = max_participants
    @start_date = start_date
    @start_time = start_time
    @end_date = end_date
    @end_time = end_time
    @duration = duration
  end


  def instructor
    if a_group_lesson.with_instructor == "Joe Schmoe" && no_time_conflicts true
      instructor =
    elsif
    elsif
    else
    end


  end



end


a_private_lesson = []
instructor_availabilty.each do |row|
  a_private_lesson << PrivateLesson.new(row)

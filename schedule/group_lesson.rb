require 'erb'
require_relative 'data_parser'

class GroupLesson

  attr_accessor :request_id,
                :name,
                :training_type,
                :start_date,
                :start_time,
                :end_date,
                :end_time,
                :with

  def initialize(request_id:, name:, training_type:, start_date:, start_time:, end_date:, end_time:, with:)
    @request_id = request_id
    @user_name = name
    @training_type = training_type
    @start_date = start_date
    @start_time = start_time
    @end_date = end_date
    @end_time = end_time
    @with_instructor = with
  end

  def student_available?
    student_available = []
    student_available << @start_time && @end_time && @start_date && @end_date && @with_instructor
      if student_available === object.start_time &&
                               GroupLesson.new.end_time &&
                               GroupLesson.new.start_date &&
                               GroupLesson.new.end_date
        return "student not available"
      elsif GroupLesson.new.with_instructor == PrivateLesson.new.name
        return "instructor not available"
      else
      end
  end




end

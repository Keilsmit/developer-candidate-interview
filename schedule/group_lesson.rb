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
    @name = name
    @training_type = training_type
    @start_date = start_date
    @start_time = start_time
    @end_date = end_date
    @end_time = end_time
    @with_instructor = with
  end

  def
    # if/else statement to find student_availabilty
  end

  def
    # if/else statement to find instructor_availabilty
  end



end


a_group_lesson = []
data.each do |row|
  a_group_lesson << GroupLesson.new(row)
end

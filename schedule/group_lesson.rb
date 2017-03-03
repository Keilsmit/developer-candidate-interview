require 'erb'
require_relative 'data_parser'
require 'date'

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
    @start_date = DateTime.parse(start_date)
    @end_date = DateTime.parse(end_date)
    @end_time = DateTime.parse(end_time)
    @with_instructor = with
  end

  def self.student_available(object)
    response = Array.new
      class_time = Array.new
        class_time << @start_time
        class_time << @end_time
      class_date = Array.new
        class_date << @start_date
        class_date << @end_date

    response + class_time + class_date

  end




end

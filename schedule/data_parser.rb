require 'csv'
require 'erb'
require_relative 'group_lesson'
require_relative 'private_lesson'

group_data = CSV.foreach("input.csv", headers: true, :header_converters => :symbol)
instructor_availabilty = CSV.foreach("instructor_availabilty.csv", headers: true, :header_converters => :symbol)


#input.csv file parsed into rows
group_lesson = []
group_data.each do |row|
  group_lesson << GroupLesson.new(row)
end

#group_lesson broken grouped by instructor(s)
group_by_instructor = group_lesson.group_by{|lesson| lesson.with_instructor}

#instructor_availabilty.csv file parsed into rows
private_lesson = []
instructor_availabilty.each do |row|
  private_lesson << PrivateLesson.new(row)

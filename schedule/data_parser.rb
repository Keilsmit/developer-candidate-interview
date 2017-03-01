require 'csv'
require 'erb'

data = CSV.foreach("input.csv", headers: true, :header_converters => :symbol)
instructor_availabilty = CSV.foreach("instructor_availabilty.csv", headers: true, :header_converters => :symbol)



group_lesson = []
data.each do |row|
  group_lesson << GroupLesson.new(row)
end

group_by_instructor = group_lesson.group_by{|lesson| lesson.with_instructor}



private_lesson = []
instructor_availabilty.each do |row|
  private_lesson << PrivateLesson.new(row)

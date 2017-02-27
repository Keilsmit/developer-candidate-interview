require 'csv'
require 'erb'

data = CSV.foreach("input.csv", headers: true, :header_converters => :symbol)
instructor_availabilty = CSV.foreach("instructor_availabilty.csv", headers: true, :header_converters => :symbol)

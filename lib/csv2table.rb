#!/usr/bin/env ruby
require 'csv'

output = ""

filename = ARGV[0]


arr_of_arrs = CSV.read(filename)

rows = arr_of_arrs.length
columns = (arr_of_arrs.max_by {|x| x.length }).length 
largestValue = arr_of_arrs.flatten.compact.max_by(&:length)

puts largestValue

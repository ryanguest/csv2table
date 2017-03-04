#!/usr/bin/env ruby
require 'csv'

longestRow = 0

s = ""
CSV.foreach(ARGV[0]) do |row1|
   longestRow = row1.size if row1.size > longestRow
   
   row1.each { |x|
      s <<  "| "
      s << x 
      s << " "
   }
   s << "|\n"
  
end

# Only support blank headers for now
header = "" 
(1..longestRow).each do |n|
    header << "|   "
end
header << "|\n"

(1..longestRow).each do |n|
    header << "|---"
end
header << "|\n"

print header
print s

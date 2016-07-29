# Code to populate the database ...
#returns an array of hashes

require 'JSON'
require 'open-uri'

grad_outcomes = JSON.parse(open("https://data.cityofnewyork.us/resource/d3as-q6wz.json").read)




grad_outcomes.each do |args|
  args.each {|key, value| key = key.to_sym }
  SchoolGraduationOutcome.create(args)
end

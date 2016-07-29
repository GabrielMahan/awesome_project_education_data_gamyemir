# Code to populate the database ...
#returns an array of hashes

require 'JSON'
require 'open-uri'

grad_outcomes = JSON.parse(open("https://data.cityofnewyork.us/resource/ns8x-c6af.jsonSc").read)

grad_outcomes.each do |args|
  args.each {|key, value| key = key.to_sym }
  SchoolGraduationOutcome.create(args)
end

demo_data = JSON.parse(open("https://data.cityofnewyork.us/resource/tvf6-bvfe.json").read)

demo_data.each do |args|
  args.each {|key, value| key = key.to_sym }
  SchoolDemographic.create(args)
end

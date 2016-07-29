# Code to populate the database ...
#returns an array of hashes

require 'JSON'
require 'open-uri'

grad_outcomes = JSON.parse(open("https://data.cityofnewyork.us/resource/d3as-q6wz.json").read)

grad_outcomes.each do |args|
  args.each {|key, value| key = key.to_sym }
  SchoolGraduationOutcome.create(args)
end

demo_data = JSON.parse(open("https://data.cityofnewyork.us/resource/tvf6-bvfe.json").read)

demo_data.each do |args|
  args.each do |key, value|
    key = key.to_sym
  end
  args["name"].gsub!(/\s{2,50}/, "")
  SchoolDemographic.create(args)
end

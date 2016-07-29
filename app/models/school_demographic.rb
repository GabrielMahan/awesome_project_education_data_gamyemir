class SchoolDemographic < ActiveRecord::Base
  # Remember to create a migration!



  def order_demographics

  [{race: 'white', percent: white_per.to_f},
   {race: 'black', percent: black_per.to_f},
   {race: 'asian', percent: asian_per.to_f},
   {race: 'hispanic', percent: hispanic_per.to_f}].sort_by { |x| x[:percent] }.reverse

  end

end


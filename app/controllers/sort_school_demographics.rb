

def find_schools_with_12th_grade
  SchoolDemographic.where.not(grade12: nil)
end

# def order_by_demographics(school_name, year = 20072008)
#   puts "HELLLOOOOO"
#   p SchoolDemographic.find_by(name: school_name.strip.upcase, schoolyear: year)
#   selected_school = SchoolDemographic.find_by(name: school_name.strip.upcase, schoolyear: year)
#   ordered_demographics =
#   [{race: 'white', percent: selected_school.white_per.to_f},
#    {race: 'black', percent: selected_school.black_per.to_f},
#    {race: 'asian', percent: selected_school.asian_per.to_f},
#    {race: 'hispanic', percent: selected_school.hispanic_per.to_f}].sort_by { |x| x[:percent] }.reverse
# end

# def find_top_demographic(school_name, year=20072008)
#   # order_by_demographics(school_name, year).first

# end

def sort_by_td(year)

  SchoolDemographic.where(schoolyear: year).sort_by do |school|
    school.order_demographics.first[:percent]
  end.reverse

end


def diversity_by_school(year = 20082009)

  sort_by_td(year).map { |school_to_print|  [school_to_print.name, school_to_print.order_demographics.first[:race], school_to_print.order_demographics.first[:percent]] }

end


def percent_graduated(year = 20062007)

  school_diversity_array = diversity_by_school(year)

  school_diversity_array.map do |school_data|

    p year.to_s[0..3]

    if SchoolGraduationOutcome.find_by(school_name: school_data[0], cohort: year.to_s[0..3])
      puts "HELLLOOOOO"

      school_data << SchoolGraduationOutcome.find_by(school_name: school_data[0], cohort: year.to_s[0..3]).total_grads_of_cohort.to_s
    else
      school_data << "there is no data for selected year"
    end
  end


end

def find_schools_with_12th_grade
  SchoolDemographic.where.not(grade12: nil)
end

def order_by_demographics(school_name, year)
  selected_school = SchoolDemographic.where("name = ? AND schoolyear = ?", school_name.upcase, year).first
  ordered_demographics =
  [{race: 'white', percent: selected_school.white_per.to_f},
   {race: 'black', percent: selected_school.black_per.to_f},
   {race: 'asian', percent: selected_school.asian_per.to_f},
   {race: 'hispanic', percent: selected_school.hispanic_per.to_f}].sort_by { |x| x[:percent] }.reverse
end

def find_top_demographic(school_name, year)
  order_by_demographics(school_name, year).first
end

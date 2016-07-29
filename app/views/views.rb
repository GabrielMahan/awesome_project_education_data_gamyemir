module Views

  def print_school(dbn, school)
    puts "#{dbn} - #{school}"
  end

  def print_menu(item, index)
    puts "#{index}. #{item}"
  end

  def select_from_menu
    return input = gets.chomp.to_i if input != 0 || input
  end

end

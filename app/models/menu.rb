class Menu
  include Views
  def build_menu(menu_hash)
    menu_hash.each_with_index do |(item, value), i|
      print_menu(item.to_s, i+1)
    end
    menu_hash[select_from_menu-1][item]
  end

  def menu_hash
    {"print all schools" => unique_schools,
              "select school" => select_school("PS 063 WILLIAM MCKINLEY")}
  end
end

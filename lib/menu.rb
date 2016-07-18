
 class Menu

   attr_reader :menu

   def initialize
     @menu = {"Omlette" =>  6,
              "Pancakes" => 7,
              "Toast" => 2,
              "Bacon Sandwich" => 5,
              "Smoothie" => 3}
   end

   def print_menu
     menu.each do |item, key|
       print item.ljust(20)
       puts "£#{key}".rjust(20)
     end
   end

   def in_menu?(item)
     menu.key?(item)
   end

   def find_price(key)
     menu[key]
   end
 end

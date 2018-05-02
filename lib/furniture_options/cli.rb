# Our CLI Controller
class FurnitureOptions::CLI

  def call
    # binding.pry
    list_rooms
    menu
    goodbye
  end

  def list_rooms
    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
    puts "We carry a full line of furniture for these rooms:"
    puts <<-DOC
      1. Patio & Outdoor
      2. Bedroom
      3. Dining Room
      4. Kids' Room
      5. Office
      6. Living Room
      7. Kitchen
      8. Bathroom
    DOC
    @rooms = FurnitureOptions::Room.list_furn_items
    @rooms.each.with_index(1) do |room, i|
      puts "#{i}. #{room.name} "
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Choose a number corresponding to the room you want to furnish,\n or 'list' or 'exit'"
      input = gets.strip.downcase

      if input.to_i > 0
        the_room = puts @rooms[input.to_i - 1]
        puts "#{the_room.name} "
      elsif input == "list"
        list_rooms
      else
        puts "Not sure what you want, type 'list' or 'exit'"
      end
    end
  end

  def goodbye
    puts "Good Luck,\n hope you found our furniture to your liking"
  end
end

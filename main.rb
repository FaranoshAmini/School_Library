require_relative './classes/app'

class Main
  def initialize
    @data = { people: [], books: [], rentals: [] }
  end

  def list_options
    puts('-------------------------')
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals of given person id'
    puts '7 - Quit'
    puts('-------------------------')
    print 'Enter number of the operation: '
  end

  def option(input)
    case input
    when '1'
      App.new.list_books(@data[:books])
    when '2'
      App.new.list_people(@data[:people])
    when '3'
      App.new.create_person(@data[:people])
    when '4'
      App.new.create_book(@data[:books])
    when '5'
      App.new.create_rental(@data[:rentals], @data[:people], @data[:books])
    when '6'
      App.new.list_rentals(@data[:rentals], @data[:people])
    else
      'Enter digit from 1 to 7'
    end
  end

  def console_entry_point
    puts ''
    puts 'Welcome to my School Library App'
    until list_options
      input = gets.chomp
      if input == '7'
        puts 'Thanks for using School Library App (^_^)'
        break
      end
      option input
    end
  end
end

Main.new.console_entry_point

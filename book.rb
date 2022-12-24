require './rentals'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
  def add_rentals=(person, date)
    
    Rental.new(self, person, date)
    Rentals.new(self, person, date)
  end
end

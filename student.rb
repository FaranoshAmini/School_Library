require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown')
    ssuper(age, name)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

end

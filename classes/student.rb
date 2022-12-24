require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, parent_permission, name)
    super(age, parent_permission, name)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

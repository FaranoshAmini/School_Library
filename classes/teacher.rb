require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name, parent_permission: true)
    super(age, parent_permission, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

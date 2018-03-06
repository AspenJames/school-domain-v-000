class School
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def roster
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade].nil? ? @roster[grade]=[] : 
    @roster[grade] << name
  end

  def grade(n)
    @roster[n]
  end
end

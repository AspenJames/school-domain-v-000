class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(n)
    @roster[n]
  end

  def sort
    @roster.sort
    @roster.each do |grade, name|
      name.sort
    end
    @roster
  end
end

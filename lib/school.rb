class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(n)
    @roster[n]
  end
end

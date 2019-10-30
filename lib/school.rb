class School
  
  attr_reader :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    sorted = {}
    ar = @roster.keys.sort
    ar.each do |i|
      sorted[i] = @roster[i].sort
    end
    sorted
  end
  
end
class School
  attr_accessor :school, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(name, grade)
    if roster[grade]
      roster[grade] << name
      elsif
      roster[grade] = [name]
    end
  end
  
  def grade(input_grade)
    roster[input_grade]
  end
  
  def sort 
    roster.values.each{|names|names.sort!}
    roster
  end
end
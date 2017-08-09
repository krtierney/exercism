module BookKeeping
  VERSION = 3
end

class School

  def initialize
    @students = Hash.new { |h, k| h[k] = [] } 
  end

  def students(grade)
    @students[grade].sort
  end

  def add(name, grade)
    @students[grade].push name
  end

  def students_by_grade
    @students.sort.map { |k, v| Hash[:grade => k, :students => v.sort] }
  end
end

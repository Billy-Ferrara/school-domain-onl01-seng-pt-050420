# class School
#
#   def initialize(name)
#     @name = name
#     @roster = {}
#   end
#
#   def roster
#     @roster
#   end
#
#   def add_student(name, grade)
#     if @roster[grade] != nil
#       @roster[grade] << name
#     else
#       @roster[grade] = [name]
#     end
#   end
#
#   def grade(grade)
#     @roster[grade]
#   end
#
#   def sort
#     @roster.each do |key, value|
#       value.sort!
#     end
#   end
#
# end

class School

  attr_accessor :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
    @roster[grade] << name
    # can also be written as @roster[grade] = [] if @roster[grade].nil?
    #                        @roster[grade].push(name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end

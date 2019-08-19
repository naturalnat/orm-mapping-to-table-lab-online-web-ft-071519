class Student
  attr_accessor :name, :grade, :id

  @@all = []

  def initialize(name, grade,id=nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    DB[:conn].execute(sqlite)
  end

end

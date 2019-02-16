class Student
  attr_accessor :grade, :name
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(name, grade)
    @grade = grade
    @name = name
  end
  def id
    @id
  end
  def self.create_table
    DB[:conn].execute("CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER)")
  end
  def self.drop_table
    DB[:conn].execute("DROP TABLE students")
  end
end

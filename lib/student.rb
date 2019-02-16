class Student
  attr_accessor :id, :grade, :name
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(id:nil, grade:nil, name:nil)
    @id = id
    @grade = grade
    @name = name
  end
  def create_table
    DB[:conn].execute("CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER)")
  end
end

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def create_table
    DB[:conn].execute("CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER)")
  end
end

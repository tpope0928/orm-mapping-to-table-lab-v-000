class Student

  attr_accessor :name, :grade
  attr_reader :id
  
  @@all = []
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
    SQL
    DB[:conn].execute(sql)
    
end

#This is a class method that creates the students table. Use a heredoc to set a variable, `sql`, equal to the necessary SQL statement. Remember, the attributes of a student, #`name`, `grade`, and `id`, should correspond to the column names you are creating in your students table. The `id` column should be the primary key. 

#With your `sql` variable pointing to the correct SQL statement, you can execute that statement using the `#execute` method provided to us by the SQLite3-Ruby gem. Remember that #this method is called on whatever object stores your connection to the database, in this case `DB[:conn]`.
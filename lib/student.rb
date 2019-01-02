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
  
  def self.drop_table
    sql = "DROP TABLE IF EXISTS students"
    DB[:conn].execute(sql)
  end
end

#This is a class method that drops the students table. Once again, create a variable `sql`, and set it equal to the SQL statement that drops the students table. Execute that #statement against the database using `DB[:conn].execute(sql)`. 
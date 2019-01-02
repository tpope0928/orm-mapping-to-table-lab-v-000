class Student

  attr_accessor :name, :grade
  attr_reader :id
  
  @@all = []
  
  
end



#Your `Student` instances should initialize with a name, grade and an optional id. The default value of the `id` argument should be set to `nil`. This is because when we create #new `Student` instances, we will not assign them an `id`. That is the responsibility of the database and we will learn more about that later. 

#`Student` attributes should have an `attr_accessor` for `name` and `grade` but only an `attr_reader` for `id`. The only place `id` can be set equal to something is inside the #initialize method, via: `@id = some_id`
class Person
    attr_accessor :first_name, :last_name
    #Elimine el atributo "age" ya que no estaba siendo utilizado fuera del método "birthday"

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end
  
    def talk()
      case self
      when Student
        puts "Aquí es la clase de programación con Ruby?"
      when Teacher
        puts "¡Bienvenidos a la clase de programación con Ruby!"
      when Parent
        puts "¿Aquí es la reunión de apoderados?"
      end
    end

    
    #Este método no está siendo utilizado, por lo que lo dejo comentado para futura referencia
    # def birthday
    #   @age += 1
    # end
  
    def introduce()
      case self
      when Student
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
      when Teacher
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
      when Parent
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
      end
    end
  end
  
  class Teacher < Person
  end
  
  class Student < Person
  end
  
  class Parent < Person
  end
  
  teacher1 = Teacher.new("Juan", "Pérez")
  print teacher1.introduce
  puts teacher1.talk
  
  student1 = Student.new("Pedro", "Herrera")
  print student1.introduce
  puts student1.talk
  
  parent1 = Parent.new("Marcia", "Brante")
  print parent1.introduce
  puts parent1.talk
  
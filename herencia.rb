#Athlete class
class Athlete
  #método para validar tiempo
  def method_name    
  end

  #método para hacer ejercicio
  def run
    if run >= 0 
    "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
    elsif run >= 20    
    "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"
    end
  end

  def swim
    if swim >= 50
      "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
    end
  end
end

  #método para obtener velocidad del atleta
  def speed    
  end

#Runner class
class Runner < Athlete
  def run    
  end            
end   
  
#Swimmer class
class Swimmer < Athlete

  def initialize(speed, speed_record)    
  end

  def swim    
  end

end

#Cyclist class 
class Cyclist < Athlete
  def initialize(speed, speed_record)

  end

end


#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
#runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"






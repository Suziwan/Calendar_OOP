require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end
  
  def postpone_24h
    @start_date += 24 * 60 * 60 # 24h * 60min * 60s
  end

  def end_date
    time_end = @start_date + @duration * 60 # duration in seconds
    return time_end
  end

  def is_past?
    @start_date < Time.now # gives directly a boolean
  end

  def is_future?
    @start_date > Time.now # gives directly a boolean
  end

  def is_soon?
    time_left = (@start_date - Time.now) / 60
    if time_left < 30
      puts "This event is in less than 30 min !"
    end
  end

  def to_s 
    puts ">Event: #{@title}"
    puts ">Starting date: #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    puts ">Duration: #{@duration} minutes"
    print ">Attendees: "
    puts @attendees.join(", ")
  end

  def age_analysis
    age_array = [] # On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 # On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| # On parcourt tous les participants (objets de type User)
      age_array << attendee.age # Leur âge est stocké dans l'array des âges
      average = average + attendee.age # Leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / @attendees.length # On divise la somme des âges pour avoir la moyenne
    
    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end
end

class WorkEvent < Event
  attr_accessor :location

  def initialize(start_date, duration, title, attendees, location)
    @location = location # On rajoute cette ligne
    super(start_date, duration, title, attendees) # La méthode super permet de reprendre le code mère
  end

  def is_event_acceptable?
    if @attendees.length > 3 || @duration > 60
      puts "This meeting doesn't respect work practises !"
      return false
    else
      puts "This meeting is OK."
      return true
    end
  end
end

#binding.pry
puts 'end of file'
# my_event = Event.new("2023-01-31 12:00", 60, "Daily Meeting", ["john_doe@gmail.com", "someone@yahoo.com"])

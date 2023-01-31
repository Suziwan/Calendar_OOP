require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration_to_save

  def initialize(date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(date_to_save)
    @duration = duration_to_save
    @title = title_to_save
    @attendees = attendees_to_save
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
    puts "Event: #{@title}"
    puts "Starting date: #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    puts "Duration: #{@duration} minutes"
    puts "Attendees: #{@attendees[0]}, #{@attendees[1]}}" # Find a way to display more than 2
  end
end

binding.pry
puts 'end of file'
#my_event = Event.new("2023-01-31 12:00", 60, "Daily Meeting", ["john_doe@gmail.com", "someone@yahoo.com"])

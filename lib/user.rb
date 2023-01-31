require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users.push(self)
  end

  def self.all
    return @@all_users
  end
  
  def self.find_by_email(email)
    # Parcours l'array @@all_users
  end
end

binding.pry
puts 'end of file'
# julie = User.new("julie@email.com", 32)
# jean = User.new("jean@email.com", 54)
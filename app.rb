# Lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# Comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'

require 'pry'

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
julie = User.new("julie@email.com", 35) # Je crée un premier User
jean = User.new("jean@email.com", 22) # Puis un second User

# Et je les insère tous les deux dans un nouvel Event
my_event = Event.new("2019-01-13 09:00", 10, "Daily standup", [julie, jean]) 
puts my_event.age_analysis # J'exécute la nouvelle méthode que j'ai écrite

# Je crée un WorkEvent
meeting = WorkEvent.new("2019-01-17 09:00", 70, "Work meeting", [julie, jean], "Home") 

binding.pry
puts 'end of file'
# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class

favorable_food = "tacos"
puts favorable_food
puts favorable_food.class
puts favorable_food.upcase

# String Methods

# Define class
class Dog
    def speak
        puts "Woof!"
    end
end

# try new
lucy = Dog.new
lucy.speak


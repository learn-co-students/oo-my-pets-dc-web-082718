require 'pry'
class Owner

attr_reader :species
attr_accessor :name, :pets, :mood

@@all = []


def self.all
  @@all
end

def initialize (species)
@species = species
@@all << self
@pets = {:cats=>[], :dogs=>[], :fishes=>[]}
end

def self.reset_all
@@all = []
end

def self.count
  @@all.count

end

def say_species
 "I am a #{@species}."
end


def buy_fish (fish_name)
Fish.new(fish_name)
self.pets[:fishes] << Fish.new(fish_name)
end

def buy_cat (cat_name)
  Cat.new(cat_name)
  self.pets[:cats] << Cat.new(cat_name)
end


def buy_dog (dog_name)
  Dog.new(dog_name)
  self.pets[:dogs] << Dog.new(dog_name)
end

 def walk_dogs
self.pets[:dogs].each do |dog|
dog.mood = "happy"
 end
end



def play_with_cats
self.pets[:cats].each do |cats|
cats.mood = "happy"
end
end

def feed_fish
  self.pets[:fishes].each do |fish|
    fish.mood= "happy"

  end
end

def sell_pets
  self.pets.each do |key, value|
    value.each do |pet|
    pet.mood = "nervous"

    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
#   value[:name].mood = "nervous"
#   binding.pry
# end
end
end
end

def list_pets
 return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
end


end

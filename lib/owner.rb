require "pry"
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets, :mood

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
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

  def buy_fish(fish_name)
    self.pets[:fishes]<<Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    self.pets[:cats]      <<Cat.new(cat_name)
  end
  def buy_dog(dog_name)
    self.pets[:dogs]      <<Dog.new(dog_name)
  end

  def walk_dogs
     self.pets[:dogs].each do |dog|
       dog.mood = "happy"
     end
  end
  def play_with_cats
      self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
      self.pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
  end

  def sell_pets
      self.pets.each do |species_name, species_array|
        species_array.each do |pet|
          pet.mood = "nervous"
        end
      end
      @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end

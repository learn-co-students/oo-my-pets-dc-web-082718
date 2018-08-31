require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = 'human'
    @@all << self
  end

  #NOTE Class Methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  #NOTE Instance Methods

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = 'happy'}
  end

  def sell_pets
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets.clear
  end

  def number_of(pet_type)
    @pets[pet_type].length
  end

  def list_pets
    "I have #{number_of(:fishes)} fish, #{number_of(:dogs)} dog(s), and #{number_of(:cats)} cat(s)."
  end

end

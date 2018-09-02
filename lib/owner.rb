require 'pry'
class Owner
  # code goes here
  attr_reader :species #species method, # can't change its species
  attr_accessor :name, :pets# can have a name

  @@all = []


  def initialize(species) #owner instance methods #species initialize with a species
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []} #pets method is initialized with a pets attribute as a hash with 3 keys
    @@all << self

  end

  def say_species #can say its species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.reset_all #reset the owners that have been created
    @@all = []
  end

  def self.count #it wants Owner.count. self refers to class so use self.
    @@all.length
  end

  def buy_fish(fish_name)
    Fish.new(fish_name) # => an instance of the fish class
    self.pets[:fishes] << Fish.new(fish_name) #buy a fish
    #Owner class's pets method's fishes
    end

  def buy_cat(cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs #Owner instance methods #walk_dogs walks the dog which makes the dog's mood happy
     #access all dog array and grab each dog to walk all of them
    self.pets[:dogs].each do |dog|
      #change the dog's mood
      dog.mood = "happy"
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
    #each pet becomes nervous
    self.pets.each do |species_name, species_array|
      species_array.each do |pet|
        pet.mood = "nervous"
        #sell all pets
        @pets = {:fishes => [], :dogs => [], :cats => []}
      end
    end

    def list_pets
      return "I have #{self.pets[:fishes].count} #{self.pets[:dogs].count}dog(s), and #{self.pets[:cats].count cats(s).}"
    end



end

































    end
end

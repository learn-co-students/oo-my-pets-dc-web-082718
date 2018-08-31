class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name #can have a name
  attr_accessor :pets

@@all = [] #keeps track of owners created

  def initialize(species) #initializes with species
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}

    @@all<<self # grab instance and shovel into class variable
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all #produce method on what I(ownder) am
    @@all           # when calls, knows what to get
  end

  def self.reset_all #want you to reset @@all
    @@all = []
  end

  def self.count
  @@all.length
  end

  #def pets
  #  @pets
#  end

def buy_fish(fish_name)
  #an instance of the Fish class(fish must exist before)
  Fish.new(fish_name)
  #buy a fish
  self.pets[:fishes] << Fish.new(fish_name)
end

def buy_cat(cat_name)
  self.pets[:cats] << Cat.new(cat_name)
end

def buy_dog(dog_name)
  self.pets[:dogs] << Dog.new(dog_name)
end

def walk_dogs
  self.pets[:dogs].each do |dog|
    #change dog mood to happy
    dog.mood = "happy"
  end
end   #each bc want to walk all the dogs in hash

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
  #each becomes nervous
    self.pets.each do |species_name, species_array| #iterating over key and value
    species_array.each do |pet|
      pet.mood = "nervous"
      end
    end
    #sell all pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end









#self refers to object thats housing it.
#dif objects has dif methods.
#capital Owner. can invoke a specific method on it.
#hashes are objects

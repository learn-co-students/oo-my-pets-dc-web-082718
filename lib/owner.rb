class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
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
    @pets[:dogs].each do |dog|
      dog.mood  = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood  = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood  = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, array_of_species|
      array_of_species.map do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish_count = 0
    dog_count = 0
    cat_count = 0
    puts "Pets: #{pets}"
    puts "************************/n/n/n/n/n"
    
    @pets.each do |species, array_of_species|
      count = array_of_species.length
      if species == :fishes
        fish_count = count
      elsif species == :cats
        cat_count = count
      else
        dog_count = count
      end
    end

    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end

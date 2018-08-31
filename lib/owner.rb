class Owner
  @@all = [] #keeps track of Owner object
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    fish
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
    dog
  end

  def walk_dogs
    self.pets[:dogs].each do |element|
      element.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |element|
      element.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |element|
      element.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |key, value|
      value.each do |element|
        element.mood = "nervous"
      end
    end
  self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish_count = 0
    dog_count = 0
    cat_count = 0

    self.pets.each do |key, value|
      value.each do |element|
        if key == :fishes
          fish_count +=1
        elsif key == :dogs
          dog_count +=1
        elsif key == :cats
          cat_count +=1
        end
      end
    end

    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end

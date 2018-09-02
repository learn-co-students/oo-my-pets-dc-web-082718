class Cat
  # code goes here
  attr_reader :name #Cat intialize with a name & can't change its name
  attr_accessor :mood #can change its mood

  def initialize(name) #cat can initialize a cat
    @name = name

    @mood = "nervous" #initialize with nervous mood
  end

end

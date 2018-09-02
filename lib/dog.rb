class Dog
  # code goes here
  attr_reader :name #looks at instance variable name
  attr_accessor :mood # can change its mood bc of accessor
  def initialize(name) #can initialize a dog
    @name = name
    @mood = "nervous"

  end
end

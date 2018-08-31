class Cat
  # code goes here
  attr_reader :name #initializes with a name #we don't want change cat name
  attr_accessor :mood                          #which is why cat

  def initialize(name) #name is place holder variable can even change it "hello"
    @name = name #can initialize a cat
    @mood = "nervous" #initialize nervous mood
  end
end

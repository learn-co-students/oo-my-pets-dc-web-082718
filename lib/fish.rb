class Fish
  # code goes here
    attr_reader :name #can't change its name
    attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = "nervous"

  end
end

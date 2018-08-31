class Dog
  # code goes here
attr_reader :name
attr_accessor :mood # can change so use accessory#go test by test before using accessory
  def initialize(name) #can initialize dog(create new instance of Dog)/callback method
    @name = name  #argument is a placeholder/#initialize with a name
    @mood = "nervous"
  end
end

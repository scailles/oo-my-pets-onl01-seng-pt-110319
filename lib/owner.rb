class Owner
  
  attr_accessor :pets, :cat, :dog
  
  attr_reader :name, :species
  
  @@all=[]
  
  def initialize(species="human",name)
    @species=species
    @name=name
    @@all << self
    @cats=[]
    @dogs=[]
  end
  
  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
   @@all.clear
  end
  
  def cats
  Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    my_dogs =
    Dog.all.select {|dog| dog.owner == self}
    my_dogs
  end
  
  def buy_cat
  cat=Cat.new(owner==self) 
  
  end
  
  def walk_dogs
    my_dogs
  end
     
end
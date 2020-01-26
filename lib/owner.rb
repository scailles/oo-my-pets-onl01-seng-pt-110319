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
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(Cat)
    cat= Cat.new(cat)
  end
     
end
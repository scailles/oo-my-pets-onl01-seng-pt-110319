class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all_cats=[]
  
  def initialize(name, owner, mood="nervous")
    @name=name
    @owner=owner
    @mood=mood
    Owner.buy_cat(self) if person
    @@all_cats << self
  end
  
  
  def self.all
    @@all_cats
  end
  
end
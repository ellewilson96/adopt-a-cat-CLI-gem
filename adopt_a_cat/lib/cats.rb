class Cat

  attr_accessor :name, :breed, :gender, :age

  def initialize(name = nil, breed = nil, gender = nil, age = nil)
    @name = name
    @breed = breed
    @gender = gender
    @age = age
  end

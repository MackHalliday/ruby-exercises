class Ferret
  attr_reader :name

  #no values are pasted thru initialize, no args required
  def initialize()
    #when initialized the default value is the following:
    @name = "a ferret has no name"
  end

  def give_name(name)
    #when called upon, default method updates to the following:
    @name = "a ferret's name is #{name}"
  end
end

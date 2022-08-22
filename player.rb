class Player
  attr_accessor :name, :lives #is a shortcut method when you need both attr_reader and attr_writer 
  def initialize(name)
    @name = name
    @lives = 3
  end

  
  def dead? # checking if player has 0 lives (dead)
    @lives == 0
  end
end
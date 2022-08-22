class Question
  attr_accessor :answer, :display_question # #is a shortcut method when you need both attr_reader and attr_writer (get and set)
  def initialize # initialize is a constructor
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @answer = @first_number + @second_number
    @display_question = "Question: #{@first_number} + #{@second_number} = ?"
  end
end
class BoardRendererText
  #initialize the board
  attr_accessor :board
  def initialize(board)
     @board=board
  end
  #board interface
  def render
    8.times do |r|
      puts "-------------------"
      8.times do |c|
        piece=board[[r,c]]
        print"#{board[[r,c]]} "
      end
      puts""
    end
    puts "-------------------"
  end
end
module TicTacToe
  class Error < StandardError; end
  class Cell
    attr_accessor :value
    def initialize(value = "")
      @value = value
    end
  end
end
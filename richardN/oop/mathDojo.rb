class MathDojo
    # your code here
    attr_reader :result

    def initialize
        @result=0
        self
    end
    def add *values
        @result += values.flatten.inject(:+)
        self
    end
    def subtract *values
        @result -= values.flatten.inject(:+)
        self
    end
    def display
        p @result 
    end
  end
  challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).display # => 4
  challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).display # => 23.15
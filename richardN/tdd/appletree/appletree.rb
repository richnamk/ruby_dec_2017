class AppleTree
    attr_accessor :age
    attr_reader :height, :apple_count
    
    def initialize
        @age = 0
        @height = 1
        @apple_count = 0
    end

    def year_gone_by
        @age += 1
        @height *= 1.1
        @apple_count +=2 if @age > 3 and age < 11
    end

    def pick_apples
        @apple_count = 0
    end
end
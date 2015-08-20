module Nest
  class NestOne
    def initialize
      @a = 'nest one'
    end

    def say
      p 'hello nest one'
    end

    def self.go_one
      p 'go one'
    end

    class NestTwo
      attr_accessor :a, :b
      def initialize
        @b = 'nest two'
        @a = 'refactor nest one'
      end

      def say
        p 'hello nest two'
      end

      def self.go
        p 'nest two go'
      end
    end
  end
end

Nest::NestOne::NestTwo.go

p Nest::NestOne::NestTwo.new.a
Nest::NestOne::NestTwo.new.say
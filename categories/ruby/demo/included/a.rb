# frozen_string_literal: true

module A
  def self.included(mod)
    puts "#{self} included in #{mod}"
    mod.instance_eval do
      puts self
      def haha
        puts 'haha'
      end
    end
  end
end

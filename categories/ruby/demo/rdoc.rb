# encoding: UTF-8

##
# This class represents an arbitrary shape by a series of points.
#
# Author:: FuShengYang (mailto:sysuyangkang@gmail.com)
# Copyright:: Copyright (c) 2002 The Pragmatic Programmers, LLC
# License:: Distributes under the same terms as Ruby
# http://ruby-doc.org/stdlib-2.0.0/libdoc/rdoc/rdoc/RDoc/Markup.html
# http://rdoc.sourceforge.net/doc/

class Shape

  ##
  # Creates a new shape described by a +polyline+.
  #
  # If the +polyline+ does not end at the same point it started at the
  # first pointed is copied and placed at the end of the line.
  #
  # An ArgumentError is raised if the line crosses itself, but shapes may
  # be concave.

  def initialize polyline
    # ...
  end

  # Remember the letters in the initial word
  def say_hello
    puts 'hello world'
  end

	##
	# This method does fun things
	#
	# = Example
	#
	#   a.do_fun_things

	def do_fun_things
	end

	##
	# Extract the age and calculate the date-of-birth.
	#--
	# FIXME: fails if the birthday falls on February 29th
	#++
	# The DOB is returned as a Time object.

	def get_dob(person)
		# ...
	end

	# call some method
	#  :args: a, b

	def some_method(*a)
	end

	# ----------------------------------------
	# :section: My Section
	# This is the section that I wrote.
	# See it glisten in the noon-day sun.
	# ----------------------------------------

	##
	# Comment for some_method

	def some_method
		# ...
	end

	 # Test to see if a new word contains the same
	 # letters as the original
	 def is_anagram?(text)
		 @initial_letters == letters_of(text)
	 end


	 # Determine the letters in a word or phrase
	 #
	 # * all letters are converted to lower case
	 # * anything not a letter is stripped out
	 # * the letters are converted into an array
	 # * the array is sorted
	 # * the letters are joined back into a string

	 def letters_of(text)
		 text.downcase.delete('^a-z').split('').sort.join
	 end
end


module MyModule # :nodoc:
  class Input
  end
end

module OtherModule # :nodoc: all
  class Output
  end
end

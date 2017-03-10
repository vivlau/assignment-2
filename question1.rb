###############################################################################
# Question One
###############################################################################
# Create a module called HelperMethods that include a method called titleize
# Titleize takes in a string and returns the string back after capitalizing
# each word in that string.
# Methods should not capitalize the following words: in, the, of, and, or, from.
# Write code to demonstrate the difference between include and extend
# in using Ruby modules with classes to include methods.
# Make sure to demonstrate calling the titleize methods with your code.

module HelperMethods
  str = "old man and the sea"
  def titleize(string)
    words = string.downcase.split(" ")
    new_words = []
    words.each do |word|
      if ["in", "the", "of", "and", "or", "from"].include?(word)
        word.capitalize! if word == words[0]
        new_words << word
      else
        new_words << word.capitalize
      end
    end
    new_words.join(' ')
  end
end

class BookName
  attr_accessor :name # allow @name to be accessed elsewhere
  include HelperMethods
  extend HelperMethods
  def test(name)
    @name = name
    p titleize(@name)
  end
end

print "Enter your favourite book: "
@name = gets.chomp

# INCLUDE VS. EXTEND
puts "Include"
BookName.new.test(@name)
# Including HelperMethods in class BookName gives instances of BookName access
# to HelperMethods' methods.
puts "Extend"
p BookName.titleize(@name)
# Extending HelperMethods in class BookName gives BookName access to
# HelperMethod's methods.

#NOTE: In most cases the answers don't require a `puts` statement. It's just there, so that you may easily run the code with `$ ruby answers.rb` to verify the output.

# Given the ruby array [1,2,3], write the code to sum up the elements of the array using 'reduce'

puts "sum of array elements:"

puts [1,2,3].reduce(:+)

#or 

puts [1,2,3].reduce { |sum, v| sum + v }

#or

puts([1,2,3].reduce do |sum, v|
  sum + v
end)

# In ruby, define an array containing 3 names of your classmates, listed in non-alphabetical order, and write code to sort the array alphabetically, and then in reverse alphabetical order, by using a native ruby sort method

#alpha
arr = ["Tim", "Elie", "Myla"]
puts "alpha name sort:"
puts arr.sort { |a,b| a <=> b }

#reverse-alpha
puts "reverse alpha name sort:"
puts arr.sort { |a,b| b <=> a }

# What does the 'self' keyword do in ruby? Why is it important? Talk about "implicit self" 
#
#self is the "current object" and the default receiver of messages (method calls) for which no explicit receiver is specified. Which object plays the role of self depends on the context.
#
#In a method, the object on which the method was called is self
#
#In a class or module definition (but outside of any method definition contained therein), self is the class or module object being defined.
#
#self automatically receives message that don't have an explicit receiver:

# Given the ruby hash { "a" => [ "alex", "al", "alf" ], "b" => [ "bob", "bill", "buck"] }, write code to output each letter that is a key in the hash, followed by all the names, which are the values associated with that letter.

hsh = { "a" => [ "alex", "al", "alf" ], "b" => [ "bob", "bill", "buck"] }

puts "outputting keys and values of a hash:"

hsh.each do |k, v|
  puts k
  puts v.join("\n")
end

# Assuming you are given the ruby hash { :students => [...], :instructors => [...] }, where the value for each key in the hash is an array of all the people for that group, write code which would produce the student to instructor ratio.

hsh = { :students => ["Joe", "Bob", "Jill", "Jane", "Mary", "Betty"], :instructors => ["John", "Raphael"] }

puts "student/instructor ratio:"
puts hsh[:students].size / hsh[:instructors].size

# In ruby, given a string containing words with possible duplicates, write a word counter, which would return a hash, whose keys are the unique words in the string, and whose values are the counts of the occurrences of that word in the string

str = "hello hello foo foo bar bar bar baz fizz buzz"

puts "word counter:"
p(str.split(" ").reduce({}) do |hsh, word|
  hsh[word] = 0 unless hsh[word]
  hsh[word] += 1 if hsh[word]
  hsh
end)

# Define a ruby class called Animal
class Animal

end

# Add a constructor to Animal, which would allow an Animal's name to be set, when a new animal is created/initialized
class Animal
  def initialize name
    @name = name
  end
end

# Add a reader/getter method to the Animal class, which would return the value of an animal's name when called
class Animal
  attr_reader :name
  def initialize name
    @name = name
  end
end

# Define a ruby class called Dog, which subclasses/inherits from the Animal class
class Dog < Animal

end

# Define an instance method on the Dog class, called 'bark', which outputs "Woof woof" to the console when called.
class Dog < Animal
  def bark
    puts "Woof woof"
  end
end

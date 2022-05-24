# Ruby is a dynamic, interpreted, object oriented language
# Everything is an object and all of those objects can be overwritten
# Ruby is one of the easiest languages to read and with Rails it may be
# the best web development option period
 
# print prints the string to screen without a newline
print "Enter a Value: "
 
# Variables start with a lowercase letter or _ and may contain numbers
# gets stores input from the user and to_i turns it into an integer
first_num = gets.to_i
 
print "Enter Another Value: "
 
second_num = gets.to_i
 
# puts prints output plus a newline, to_s converts the variable into a
# string, you can combine values using +
puts first_num.to_s + " + " + second_num.to_s + " = " +
(first_num + second_num).to_s
 
# Arithmetic Operators
puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 * 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s
 
# Integers or Fixnums can store extremely large numbers
# They can go well beyond 4,611,686,018,427,387,903
 
numOne = 1.000
 
# You must put a 0 before your floats
num99 = 0.999
 
# Floating point calculations tend to be accurate
puts numOne.to_s + " - " + num99.to_s + " = " + (numOne - num99).to_s
 
# 14 Digits of accuracy is the norm
big_float = 1.12345678901234
puts (big_float + 0.00000000000005).to_s
 
# Everything is an object
puts 1.class
puts 1.234.class
puts "A String".class
 
# A Constant starts with an uppercase letter and if you try to change the
# value you will be warned
 
A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT
 
Multiline comments
=end
 
# --------------- IF ELSE ELSIF ---------------
 
age = 12
 
# If statements perform different actions depending on conditions
# Comparison Operators : == != < > <= >=
# Logical Operators : && || ! (and, or, not)
 
if (age >= 5) && (age <= 6)
  puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
  puts "You're in Middle School"
  puts "Yeah"
elsif (age >= 14) && (age <= 18)
  puts "You're in High School"
else
  puts "Stay Home"
end
 
puts "true && false = " + (true && false).to_s
puts "true && false = " + (true || false).to_s
puts "!true = " + (!true).to_s
 
# Comparison operator that returns 0 (equal), 1 if 1st is greater and
# -1 if 1st is less then
puts "5 <=> 10 = " + (5 <=> 10).to_s
 
# unless is another comparison operator
 
unless age > 4
  puts "No School"
else
  puts "Go to School"
end
 
# You can add condtions to the output that proceeds it
 
puts "You're Young" if age < 30
 
# --------------- CASE ---------------
 
print "Enter Greeting : "
 
# chomp removes /n from input
 
greeting = gets.chomp
 
# Case is used when you have a limited number of options
 
case greeting
when "French", "french"
  puts "Bonjour"
 
  # without end it would check the next condition
  exit
 
when "Spanish", "spanish"
  puts "Hola"
  exit
 
# else is the default
else
  puts "Hello"
end
 
# --------------- TERNARY OPERATOR ---------------
 
age = 50
 
# Format (condition) ? "Returned if true" : "Returned if false"
 
puts (age >= 50) ? "Old" : "Young"
 
# --------------- LOOP ---------------
 
x = 1
 
# Loops until you break out of loop
 
loop do
  # Shortcut for x = x + 1
  x += 1
 
  # Slips this iteration of the loop
  next unless (x % 2) == 0
  puts x
 
  # Ends the looping
  break if x >= 10
end
 
# --------------- WHILE LOOP ---------------
# Do stuff while the condition is met
 
y = 1
 
while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
  break if y >= 10
end
 
z = 1
 
begin
  z += 1
  next unless (z % 2) == 0
  puts z
  break if z >= 10
end while z <= 10
 
# --------------- UNTIL LOOP ---------------
# Do stuff until a condition is met
 
a = 1
 
until a >= 10
  a += 1
  next unless (a % 2) == 0
  puts a
end
 
# --------------- FOR LOOPS ---------------
 
# Create an array of numbers
 
numbers = [1, 2, 3, 4, 5]
 
# Cycles through every item in numbers temporarily storing them in number
# #{variable} can be used to insert values
 
for number in numbers
  puts "#{number}, "
end
 
groceries = ["bananas", "sweet potatoes", "pasta", "tomatoes"]
 
# Cycles through every item in groceries temporarily storing them in food
 
groceries.each do |food|
  puts "Get some #{food}"
end
 
# Cycles through numbers 0 through 5
 
(0..5).each do |i|
  puts "# #{i}"
end


# --------------- STRINGS ---------------

# Strings are a series of characters between " or '
# String interpolation doesn't work with '' and neither do backslash
# characters like newline

puts "Add Them #{4 + 5} \n\n"
puts 'Add Them #{4 + 5} \n\n'

# A here-doc is normally used when you want a multiline string

multiline_string = <<EOM
This is a very long string
that contains interpolation
like #{4 + 5} \n\n
EOM

puts multiline_string

# ---------------------------------------

# Find all string methods by typing irb in terminal and "string".methods

first_name = "Derek"

last_name = "Banas"

# You can combine or concatenate strings with +

full_name = first_name + " " + last_name

middle_name = "Justin"

# Combining strings with interpolation

full_name = "#{first_name} #{middle_name} #{last_name}"
puts full_name

# You can check if a string contains a string with include

puts full_name.include?("Justin")

# Get the length of a string

puts full_name.size

# Count the number of vowels

puts "Vowels : " + full_name.count("aeiou").to_s

# Count the consonants

puts "Consonants : " + full_name.count("^aeiou").to_s

# You can check if a string starts with another string

puts full_name.start_with?("Banas")

# Return the index for the match

puts "Index : " + full_name.index("Banas").to_s

# Check equality of strings

puts "a == a : " + ("a" == "a").to_s

# Check if they are the same object

puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s
puts first_name.equal?first_name

# Changing Case

puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

# Stripping white space

full_name = "       " + full_name

full_name = full_name.lstrip
full_name = full_name.rstrip
full_name = full_name.strip

puts full_name

# Formatting Strings

puts full_name.rjust(20, '.')
puts full_name.ljust(20, '.')
puts full_name.center(20, '.')

# Chop eliminates the last character

puts full_name.chop

# Chomp eliminates \n or a specific string

puts full_name.chomp
puts full_name.chomp('as')

# Delete deletes provided characters

puts full_name.delete("a")

# Split a string into an array

name_array = full_name.split(//)
puts name_array

name_array = full_name.split(/ /)
puts name_array

# String Conversions

puts "a".to_i
puts "2".to_f
puts "2".to_sym






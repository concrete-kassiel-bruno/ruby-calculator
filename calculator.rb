# Method declaration area.
def readValues
  print "Please enter first number: "

  $number1 = gets.chomp.to_f

  print "Please enter second number: "

  $number2 = gets.chomp.to_f
end

def sum
  $number1 + $number2
end

def subtraction
  $number1 - $number2
end

def multiplication
  $number1 * $number2
end

def division
  $number1 / $number2
end
# End of method declaration area.

# Program body.
puts "==============================="
puts " Welcome to My Ruby Calculator"
puts "==============================="

puts ""
puts "To start, please select one of the option listed below: \n\n1 - Addition \n2 - Subtraction \n3 - Division \n4 - Multiplication"
print "Your choice is: "

choice = gets.chomp.to_i

case choice
  when 1
    puts "Nice! you have chosen Addition."

    readValues

    print "The result of #{$number1} + #{$number2} is #{sum}"
  when 2
    puts "Nice! you have chosen Subtraction."

    readValues

    print "The result of #{$number1} - #{$number2} is #{subtraction}"
  when 3
    puts "Nice! you have chosen Division."

    readValues

    if $number1 == 0 or $number2 == 0
      print "Sorry, one of the values entered is 0, and we can't divide by Zero!"
    else
      print "The result of #{$number1} / #{$number2} is #{division}"
    end
  when 4
    puts "Nice! you have chosen Multiplication."

    readValues

    print "The result of #{$number1} * #{$number2} is #{multiplication}"
  else
    print "Invalid Option!"
end
# At the beginning of the day, the deli is empty so the queue should be represented
# by an empty array:
katz_deli = []

# Build the line method that shows everyone their current place in the line.
def line(katz_deli)
    line = ""
    # https://apidock.com/ruby/Enumerable/any%3F
    if katz_deli.any?
        # https://apidock.com/ruby/Enumerator/each_with_index
        katz_deli.each.with_index(1){|name, number| line << " #{number}. #{name}" }
        puts "The line is currently:#{line}"
    else
        # If there is nobody in line, it should say "The line is currently empty."
        puts "The line is currently empty."
    end
end

# The take_a_number method should accept two arguments,
# the array for the current line of people (katz_deli), and a string containing the name of the person joining the end of the line.
def take_a_number(katz_deli, new_person)
    katz_deli << new_person
    # The method should call out (puts) the person's name along with their position in line
    puts "Welcome, #{new_person}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    # https://apidock.com/ruby/Enumerable/any%3F
    if katz_deli.any?
        # Build the now_serving method which should call out (i.e. puts)
        # the next person in line and then remove them from the front.
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    else
        # If there is nobody in line, it should call out (puts) that
        # "There is nobody waiting to be served!".
        puts "There is nobody waiting to be served!"
    end
end

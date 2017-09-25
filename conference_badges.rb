# Write your code here.
require "pry"

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.collect.with_index do |name|
    name = badge_maker(name)
  end
end

def assign_rooms(array)
  array.collect.with_index do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(array)
  array.each_with_index do |name, index|
    puts batch_badge_creator(array)[index]
    puts assign_rooms(array)[index]
    #binding.pry
  end
end

array = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
printer(array)

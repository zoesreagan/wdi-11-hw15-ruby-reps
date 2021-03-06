
#1. Print "Hello World" to the console

p "Hello, World"

#Arrays
# Use .uniq to print the array with all duplicate entries removed
# Next, use .push and .pop and .length on the array as you would with javaScript
# Use .include? to check if the array contains the number 8

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]


p nums.uniq
p nums.push[0]
p nums.pop[1]
p nums.length

p nums.include? 8

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

p colors.sample
p colors.reverse

p colors.to_s.upcase

# Methods
# Write a method that finds the area of a rectangle given values for width and height

def find_area height, width
  height * width
end

p find_area 2, 5

#Write a method that will loop over the nums array and print each number multiplied by 5
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]
def multiply_by_five arr
  arr.map {|a| a*5}
end

p multiply_by_five nums


##Methods w/ Hashes

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

# Write a method that will take in any hash and return the price of the item.
# Compete this method:

def print_price hash
  hash [:price]
end
p print_price table

# Compete this method:

def print_item_sums hash1, hash2
  hash1[:price] + hash2[:price]
end

p print_item_sums book, table



# EULER PROBLEM 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
#The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def euler_sum
   nums = (0..999).select { |n| n%3==0 || n%5==0 }
   num_sum = nums.inject(0) {|s,n| s+=n}
end

p euler_sum

# Write a method called check_prime? that will test whether a number is Prime.
# The method will return true if Prime, false if not.
require 'prime'

def check_prime? num
  Prime.prime?(num)
end

p check_prime? 120

# Write another method called get_primes that will print all the Primes up to an arbitrary limit.
# For example, if you invoke your method with get_primes 100
#it will print all the Prime numbers up to and including 100.

def get_primes limit
  prime_nums = (0..limit).select{|n| check_prime?(n)}
end

p get_primes 100

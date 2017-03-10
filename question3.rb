###############################################################################
# Question Three
###############################################################################
# Write a Ruby method called: is_prime.
# The function must take a number n and it should return true or false
# whether the argument passed (n) is a prime number or not.
# A prime number is a number that is divisible only by 1 and itself.

def is_prime(num)
  return false if num <= 1
  num.to_i.downto(2).each do |i|
    return false if num % i == 0
    true
  end
end

p is_prime(12)

def largest_prime_factor(num)
  factors = (1..num).to_a.select do |n|
    n if num%n == 0 && prime?(n)
  end
  factors.max
end
def prime?(n)
  (2..Math.sqrt(n)).to_a.none?{|i| n % i == 0} ? true : false
end

require "prime"

primes = [2]

num = 3

    while primes.count < 100
        is_prime = true
        
        (2...num).each do |idx|
            if num % idx == 0
            is_prime = false
            break
            end
        end
        
        primes << num if is_prime
        num += 1
    end

# p primes#.sum#.prime?


def lifetime_earnings(parent_age)
    kids_age = parent_age / 2
    kids_income = kids_age ** 2
    earnings = kids_income * (65 - kids_age)
    earnings
end

p lifetime_earnings(30)
p lifetime_earnings(50)

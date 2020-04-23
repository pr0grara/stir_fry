require "prime"


def prime?(num)
    return false if num < 2
    (2...num).each { |i| return false if num % i == 0 }
    true
end

def mersenne_sequence
    Enumerator.new do |y|
        i = 1
        loop do 
            #debugger
            merse = 2**i - 1
            y << merse if merse.prime?
            i += 1
        end
        
    end
    
end


def mersenne_prime(num)
    mersenne_primes = []
    mersenne_sequence.take(num)
    # debugger
    # mersenne_primes[-1]
end

p mersenne_prime(9)

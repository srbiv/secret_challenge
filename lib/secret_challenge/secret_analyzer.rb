require "secret_challenge/prime_generator"

module SecretChallenge
  class SecretAnalyzer
    # Public: Initialize a SecretAnalyzer.
    #
    # secret - Proc, holds a "secret function" that accepts a single
    #          integer parameter and returns an integer.
    # limit - Integer, Upper bounds for prime numbers to to check the secret with
    def initialize(secret, limit, prime_generator: PrimeGenerator)
      @secret = secret
      @limit = limit.to_i
      @prime_generator = prime_generator
    end


    # Public: Is the secret additive for all primes up to the limit?
    #
    # Returns a boolean indicating whether the secret is additive for primes up
    #  to the limit
    def additive_for_primes?
      prime_combinations.each{ |c| return false if !additive?(*c) }

      true
    end

    private

    # Private: A "secret" function that accepts a single integer parameter and
    #          returns an integer.
    def secret(x)
      @secret.call(x)
    end

    # Private: Check is secret is additive for any two integers.
    #
    # x  - Integer to pass to secret function as a parameter.
    # y - Integer to pass to secret function as a parameter.
    #
    # Returns a boolean indicating whether the secret is additive
    def additive?(x, y)
      sum_of_params = x + y
      sum_of_secrets = secret(x) + secret(y)
      
      sum_of_secrets == secret(sum_of_params)
    end

    def limit
      @limit
    end

    # Private: Array of prime integers up to the limit.
    #
    # limit - Upper bounds for list of primes.
    #         Will not be included if it is prime.
    #
    # Returns an array of prime numbers
    def primes
      prime_generator.up_to(limit)
    end

    # Private: Get all repeated combinations of primes.
    #
    # Returns an array of arrays of prime combinations
    def prime_combinations
      primes.repeated_combination(2)
    end

    def prime_generator
      @prime_generator
    end
  end
end

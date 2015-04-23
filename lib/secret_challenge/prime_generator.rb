require 'prime'

module SecretChallenge
  class PrimeGenerator
    # Public: Generate primes up to requested limit
    #
    # limit - Upper bounds for list of primes.
    #         Will not be included if it is prime.
    #
    # Returns and array of primes up to the limit
    def self.up_to(limit)
      new.up_to(limit)
    end

    # Public: Initialize a PrimeGenerator.
    def initialize(prime_factory: Prime::EratosthenesGenerator.new)
      @prime_factory = prime_factory
      @current_prime = 0
      @primes = []
    end

    # Public: Generate primes up to requested limit
    #
    # limit - Upper bounds for list of primes.
    #         Will not be included if it is prime.
    #
    # Returns and array of primes up to the limit
    def up_to(limit)
      while next_prime < limit do
        primes << current_prime if current_prime < limit
      end

      primes
    end

    private

    def current_prime
      @current_prime
    end

    def next_prime
      @current_prime = prime_factory.next
    end

    def prime_factory
      @prime_factory
    end

    def primes
      @primes
    end
  end
end

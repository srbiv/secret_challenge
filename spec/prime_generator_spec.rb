require 'spec_helper'

describe SecretChallenge::PrimeGenerator do
  subject(:prime_generator) { described_class.new }
  let(:limit) { 97 }

  describe "#up_to" do
    subject(:up_to) { prime_generator.up_to(limit) }
    let(:expected_primes) {
      [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
       41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89]
    }

    it { is_expected.to eq(expected_primes) }
  end
end

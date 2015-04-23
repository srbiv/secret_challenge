require 'spec_helper'

describe SecretChallenge::SecretAnalyzer do
  subject(:secret_analyzer) { described_class.new(secret, limit) }
  let(:limit) { 100 }

  describe "#additive_for_primes?" do
    subject(:additive_for_primes?) { secret_analyzer.additive_for_primes? }

    context "secret is additive" do
      let(:secret) { Proc.new{ |x| x } }

      it { is_expected.to be_truthy }
    end

    context "secret is not additive" do
      let(:secret) { Proc.new{ |x| Random.rand(x) } }

      it { is_expected.to be_falsey }
    end
  end
end


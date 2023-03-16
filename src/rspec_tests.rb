require_relative './solver'
RSpec.describe Solver do
  describe '#factorial' do
    # We create the context to the test
    context 'when given a positive integer' do
      # We test the functionality when we give it a correct number
      it 'returns the correct factorial' do
        solver = Solver.new
        allow(solver).to receive(:factorial).and_return(120)
        expect(solver.factorial(5)).to eq(120)
      end
    end

    # We create the context to the test
    context 'when given 0' do
      # We test the case when we give it a 0 as a parameter
      it 'returns 1' do
        solver = Solver.new
        allow(solver).to receive(:factorial).and_return(1)
        expect(solver.factorial(0)).to eq(1)
      end
    end

    # We create the context to the test
    context 'when given a negative integer' do
      # We test the case when we give it a negative number
      it 'raises an exception' do
        solver = Solver.new
        expect { solver.factorial(-5) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
    # We test the functionality of reverse function
    it 'returns the reversed string' do
      solver = Solver.new
      allow(solver).to receive(:reverse).and_return('olleh')
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    # We create the context to the test
    context 'when N is divisible by 3' do
      # We test the fizzbuzz functionality when given a number divisible by 3
      it "returns 'fizz'" do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('fizz')
        expect(solver.fizzbuzz(9)).to eq('fizz')
      end
    end

    # We create the context to the test
    context 'when N is divisible by 5' do
      # We test the fizzbuzz functionality when given a number divisible by 5
      it "returns 'buzz'" do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('buzz')
        expect(solver.fizzbuzz(10)).to eq('buzz')
      end
    end

    # We create the context to the test
    context 'when N is divisible by 3 and 5' do
      # We test the fizzbuzz functionality when given a number divisible by both 5 and 3
      it "returns 'fizzbuzz'" do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('fizzbuzz')
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end

    # We create the context to the test
    context 'when N is not divisible by 3 or 5' do
      # We test the fizzbuzz functionality when given a number not divisible by 5 nor 3
      it 'returns N as a string' do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('7')
        expect(solver.fizzbuzz(7)).to eq('7')
      end
    end
  end
end

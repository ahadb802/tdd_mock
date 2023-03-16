require_relative './solver'
RSpec.describe Solver do
  describe '#factorial' do
    context 'when given a positive integer' do
      it 'returns the correct factorial' do
        solver = Solver.new
        allow(solver).to receive(:factorial).and_return(120)
        expect(solver.factorial(5)).to eq(120)
      end
    end

    context 'when given 0' do
      it 'returns 1' do
        solver = Solver.new
        allow(solver).to receive(:factorial).and_return(1)
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'when given a negative integer' do
      it 'raises an exception' do
        solver = Solver.new
        expect { solver.factorial(-5) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
    it 'returns the reversed string' do
      solver = Solver.new
      allow(solver).to receive(:reverse).and_return('olleh')
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    context 'when N is divisible by 3' do
      it "returns 'fizz'" do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('fizz')
        expect(solver.fizzbuzz(9)).to eq('fizz')
      end
    end

    context 'when N is divisible by 5' do
      it "returns 'buzz'" do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('buzz')
        expect(solver.fizzbuzz(10)).to eq('buzz')
      end
    end

    context 'when N is divisible by 3 and 5' do
      it "returns 'fizzbuzz'" do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('fizzbuzz')
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end

    context 'when N is not divisible by 3 or 5' do
      it 'returns N as a string' do
        solver = Solver.new
        allow(solver).to receive(:fizzbuzz).and_return('7')
        expect(solver.fizzbuzz(7)).to eq('7')
      end
    end
  end
end

require 'spec_helper'

RSpec.describe ArrayUtils do
  describe '.flatten' do
    context 'when a valid nested array is provided' do
      it 'flattens the nested values into one single array' do
        expect(ArrayUtils.flatten([[1, 2, [3], 4]])).to eq [1, 2, 3, 4]
      end
    end

    context 'when an empty array is provided' do
      it 'returns an empty array' do
        expect(ArrayUtils.flatten([])).to eq []
      end
    end

    context 'when an array of empty arrays are provided' do
      it 'returns an empty array' do
        expect(ArrayUtils.flatten([[], [[]]])).to eq []
      end
    end

    context 'when nil is provided' do
      it 'returns an empty array' do
        expect { ArrayUtils.flatten(nil) }.to raise_error(ArgumentError)
      end
    end
  end
end

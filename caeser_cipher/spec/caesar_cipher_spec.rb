# frozen_string_literal: true

require_relative '../caesar_cipher'

describe CaesarCipher do
  let(:caesar) { described_class }

  describe '#caesar_cipher' do
    context 'when called with valid args' do
      context 'if string is all lower and size is 4' do
        it 'calls lower_case 4 times' do
          expect(caesar).to receive(:lower_case).exactly(4).times
          caesar.caesar_cipher('abcd', 2)
        end
      end
      context 'if string is all upper and size is 4' do
        it 'calls upper_case 4 times' do
          expect(caesar).to receive(:upper_case).exactly(4).times
          caesar.caesar_cipher('ABCD', 2)
        end
      end
      context 'if string has 2 upper and 2 lower letters' do
        it 'calls both upper_case and lower_case twice' do
          expect(caesar).to receive(:lower_case).twice
          expect(caesar).to receive(:upper_case).twice
          caesar.caesar_cipher('ABcd', 2)
        end
      end
      context 'when string is "z" and shift of 2 is given' do
        it 'converts "z" to "b"' do
          result = caesar.caesar_cipher('z', 2)
          expect(result).to eq('b')
        end
      end
      context 'when string is "Z" and shift of 2 is given' do
        it 'converts "Z" to "B"' do
          result = caesar.caesar_cipher('Z', 2)
          expect(result).to eq('B')
        end
      end
    end
  end
  describe '#upper_case' do
    context "when passed a upper letter's ord with shift" do
      it 'returns shift letter and keeps the case upper' do
        result = caesar.caesar_cipher('A', 2)
        expect(result).to eq('C')
      end
    end
  end
  describe '#lower_case' do
    context "when passed a lower letter's ord with shift" do
      it 'returns shift letter and keeps the case lower' do
        result = caesar.caesar_cipher('a', 2)
        expect(result).to eq('c')
      end
    end
  end
end

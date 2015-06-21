require 'inject'

describe 'injection' do

  context 'addition' do

    it 'works like inject' do
      a = [5, 6, 7, 8, 9, 10]
      expect(a.injection(:+)).to eq 45
    end

    xit 'adds two numbers in an array' do
      a = [5, 6]
      expect(a.injection(:+)).to eq 11
    end

    it 'reassigns a[0] to the result of a[0] + a[1]' do
      a = [5,6]
      expect { a.injection(:+) }.to change { a[0] }.from(5).to(11)
    end

    xit 'reassigns a[1] to a[2]' do
      a = [5, 6, 7]
      expect { a.injection(:+) }.to change { a[1] }.from(6).to(7)
    end

    it 'can make use of the initial_value' do
      a = [5, 6, 7, 8, 9, 10]
      expect(a.injection(1, :+)).to eq 46
    end
  end

  context 'subtraction' do

    it 'works like inject' do
      a = [5, 6, 7, 8, 9, 10]
      expect(a.injection(:-)).to eq -35
    end
  end

  context 'division' do

    it 'works like inject' do
      a = [5.0, 6, 7, 8, 9, 10]
      expect(a.injection(:/)).to eq 0.00016534391534391536
    end
  end

    context 'multiplication' do

    it 'works like inject' do
      a = [5, 6, 7, 8, 9, 10]
      expect(a.injection(:*)).to eq 151200
    end
  end
end
require 'rspec'
require 'array_super_inject'

describe Array do

  context 'simple functionality' do

    it 'can add' do
      expect([1, 2, 3].inject { |memo, elmt| memo + elmt }).to eq 6
      expect([1, 2, 3].super_inject { |memo, elmt| memo + elmt }).to eq 6
    end

    it 'can times' do
      expect([1, 2, 3, 4].inject { |memo, elmt| memo * elmt }).to eq 24
      expect([1, 2, 3, 4].super_inject { |memo, elmt| memo * elmt }).to eq 24
    end

    it 'can add with a starting point' do
      expect([1, 2, 3].inject(10) { |memo, elmt| memo + elmt }).to eq 16
      expect([1, 2, 3].super_inject(10) { |memo, elmt| memo + elmt }).to eq 16
    end

    it 'can times with a starting point' do
      expect([1, 2, 3].inject(10) { |memo, elmt| memo * elmt }).to eq 60
      expect([1, 2, 3].super_inject(10) { |memo, elmt| memo * elmt }).to eq 60
    end

    it 'can add with a symbol' do
      expect([1, 2, 3].inject(:+)).to eq 6
      expect([1, 2, 3].super_inject(:+)).to eq 6
    end

    it 'can times with a starting point and a symbol' do
      expect([1, 2, 3].inject(10, :*)).to eq 60
      expect([1, 2, 3].super_inject(10, :*)).to eq 60
    end

  end

  context 'advanced functionality (from Ruby-Docs)' do

    it 'can sum some other numbers' do
      expect((5..10).to_a.reduce(:+)).to eq 45
      expect((5..10).to_a.super_inject(:+)).to eq 45
    end

    it 'can multiply some other numbers' do
      expect((5..10).to_a.reduce(1, :*)).to eq 151_200
      expect((5..10).to_a.super_inject(1, :*)).to eq 151_200
    end

    it 'can find the longest word' do
      expect(%w{ ( cat sheep bear ) }.inject do |m, w|
        m.length > w.length ? m : w
      end).to eq "sheep"
      expect(%w{ ( cat sheep bear ) }.super_inject do |m, w|
        m.length > w.length ? m : w
      end).to eq "sheep"
    end

    it 'can satisfy Mihai\'s crazy test' do
      data = [{ a: 1 }, { b: 2 }, { c: 3 }]
      expect(data.inject(:merge)).to eq(data.super_inject(:merge))
    end

  end

  context 'RECURSIVE!!' do

    it 'can add' do
      expect([1, 2, 3].inject { |memo, elmt| memo + elmt }).to eq 6
      expect([1, 2, 3].sup_inj_rec { |memo, elmt| memo + elmt }).to eq 6
    end

    it 'can times' do
      expect([1, 2, 3, 4].inject { |memo, elmt| memo * elmt }).to eq 24
      expect([1, 2, 3, 4].sup_inj_rec { |memo, elmt| memo * elmt }).to eq 24
    end

    it 'can add with a starting point' do
      expect([1, 2, 3].inject(10) { |memo, elmt| memo + elmt }).to eq 16
      expect([1, 2, 3].sup_inj_rec(10) { |memo, elmt| memo + elmt }).to eq 16
    end

    it 'can times with a starting point' do
      expect([1, 2, 3].inject(10) { |memo, elmt| memo * elmt }).to eq 60
      expect([1, 2, 3].sup_inj_rec(10) { |memo, elmt| memo * elmt }).to eq 60
    end

    xit 'can add with a symbol' do
      expect([1, 2, 3].inject(:+)).to eq 6
      expect([1, 2, 3].sup_inj_rec(:+)).to eq 6
    end

    xit 'can times with a starting point and a symbol' do
      expect([1, 2, 3].inject(10, :*)).to eq 60
      expect([1, 2, 3].sup_inj_rec(10, :*)).to eq 60
    end

  end

end

require 'inject-challenge'

describe MyArray do
  describe '#attempt_at_inject - without initial value argument' do
    before do
      subject.concat([1,2,3,4,5])
    end

    it 'behaves like inject { |r,e| r*e }' do
      expect(subject.attempt_at_inject { |r, e| r*e }).to be( subject.inject { |r, e| r*e })
    end

    it 'behaves like inject { |r,e| r+e }' do
      expect(subject.attempt_at_inject { |r, e| r+e }).to be( subject.inject { |r, e| r+e })
    end

    it 'behaves like inject { |r,e| r>e ? r+e : r-e }' do
      expect(subject.attempt_at_inject { |r, e| r>e ? r+e : r-e }).to be( subject.inject { |r, e| r>e ? r+e : r-e })
    end
  end

  describe '#attempt_at_inject - with initial value argument' do
    before do
      subject.concat([1,2,3,4,5])
    end

    it 'behaves like inject { |r,e| r*e }' do
      expect(subject.attempt_at_inject(5) { |r, e| r*e }).to be( subject.inject(5) { |r, e| r*e })
    end

    it 'behaves like inject { |r,e| r+e }' do
      expect(subject.attempt_at_inject(5) { |r, e| r+e }).to be( subject.inject(5) { |r, e| r+e })
    end

    it 'behaves like inject { |r,e| r>e ? r+e : r-e }' do
      expect(subject.attempt_at_inject(5) { |r, e| r>e ? r+e : r-e }).to be( subject.inject(5) { |r, e| r>e ? r+e : r-e })
    end
  end
end

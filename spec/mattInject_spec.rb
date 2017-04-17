require_relative '../lib/mattInject.rb'  # => true

describe Array do
    describe '#mattInject' do

      it 'should return the correct value when summing numbers' do
        array = [1,2,3,4]
        array.mattInject{|acc,e|acc+e}
        expect(subject).to eq(10)
      end

    end

end

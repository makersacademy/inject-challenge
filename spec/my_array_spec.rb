require 'my_array'

describe Array do

  context 'with just a block' do

    it 'can add' do
      expect([1, 2, 3, 4].inject { |mem, el| mem + el }).to eq 10
      expect([1, 2, 3, 4].my_inject { |mem, el| mem + el }).to eq 10
    end

    it 'can subtract' do
      expect([1, 2, 3, 4].inject { |mem, el| mem - el }).to eq -8
      expect([1, 2, 3, 4].my_inject { |mem, el| mem - el }).to eq -8
    end

    it 'can multipy' do
      expect([1, 2, 3, 4].inject { |mem, el| mem * el }).to eq 24
      expect([1, 2, 3, 4].my_inject { |mem, el| mem * el }).to eq 24
    end

    it 'can divide' do
      expect([1.0, 2.0, 3.0, 4.0].inject { |mem, el| mem / el }).to eq 0.041666666666666664
      expect([1.0, 2.0, 3.0, 4.0].my_inject { |mem, el| mem / el }).to eq 0.041666666666666664
    end

    it 'can add with a string' do
      expect(['h', 'e', 'l', 'l', 'o'].inject { |mem, el| mem + el }).to eq 'hello'
      expect(['h', 'e', 'l', 'l', 'o'].my_inject { |mem, el| mem + el }).to eq 'hello'
    end

  end

  context 'with a block and an argument' do
    
    it 'can add' do
      expect([1, 2, 3, 4].inject(10) { |mem, el| mem + el }).to eq 20
      expect([1, 2, 3, 4].my_inject(10) { |mem, el| mem + el }).to eq 20
    end

    it 'can subtract' do
      expect([1, 2, 3, 4].inject(10) { |mem, el| mem - el }).to eq 0
      expect([1, 2, 3, 4].my_inject(10) { |mem, el| mem - el }).to eq 0
    end

    it 'can multipy' do
      expect([1, 2, 3, 4].inject(10) { |mem, el| mem * el }).to eq 240
      expect([1, 2, 3, 4].my_inject(10) { |mem, el| mem * el }).to eq 240
    end

    it 'can divide' do
      expect([1.0, 2.0, 3.0, 4.0].inject(10) { |mem, el| mem / el }).to eq 0.4166666666666667
      expect([1.0, 2.0, 3.0, 4.0].my_inject(10) { |mem, el| mem / el }).to eq 0.4166666666666667
    end

    it 'can add with a string' do
      expect([' ', 'b', 'y', 'e' ].inject('hello') { |mem, el| mem + el }).to eq 'hello bye'
      expect([' ', 'b', 'y', 'e' ].my_inject('hello') { |mem, el| mem + el }).to eq 'hello bye'
    end

  end

  context 'given a symbol' do

    it 'can add' do
      expect([1, 2, 3, 4].inject :+).to eq 10
      expect([1, 2, 3, 4].my_inject :+).to eq 10
    end

    it 'can subtract' do
      expect([1, 2, 3, 4].inject :-).to eq -8
      expect([1, 2, 3, 4].my_inject :-).to eq -8
    end

    it 'can multipy' do
      expect([1, 2, 3, 4].inject :*).to eq 24
      expect([1, 2, 3, 4].my_inject :*).to eq 24
    end

    it 'can divide' do
      expect([1.0, 2.0, 3.0, 4.0].inject :/).to eq 0.041666666666666664
      expect([1.0, 2.0, 3.0, 4.0].my_inject :/).to eq 0.041666666666666664
    end

    it 'can add with a string' do
      expect(['h', 'e', 'l', 'l', 'o'].inject :+).to eq 'hello'
      expect(['h', 'e', 'l', 'l', 'o'].my_inject :+).to eq 'hello'
    end

  end

  context 'given a symbol and a starting point' do

    it 'can add' do
      expect([1, 2, 3, 4].inject(10, :+)).to eq 20
      expect([1, 2, 3, 4].my_inject(10, :+)).to eq 20
    end

    it 'can subtract' do
      expect([1, 2, 3, 4].inject(10, :-)).to eq 0
    end

    it 'can multipy' do
      expect([1, 2, 3, 4].inject(10, :*)).to eq 240
    end

    it 'can divide' do
      expect([1.0, 2.0, 3.0, 4.0].inject(10, :/)).to eq 0.4166666666666667
    end

    it 'can add with a string' do
      expect(['h', 'e', 'l', 'l', 'o'].inject { |mem, el| mem + el }).to eq 'hello'
    end

  end

end
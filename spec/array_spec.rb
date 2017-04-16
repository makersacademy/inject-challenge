require 'my_inject'

describe Array do
  xcontext "can work with addition" do
    xit "it can add stuff" do
      expect([1, 2, 3].inject { |accum, sym| accum + sym }).to eq 6
      #expect([1, 2, 3].my_inject { |accum, sym| accum + sym }).to eq 6
    end

    xit "can add with a starting point" do
      expect()
    end

    xit "can add with a symbol" do
    end

    xit "can add with a starting point and a symbol" do
    end
  end

  xcontext "can work with multiplication" do
    xit "can multiply" do
    end

    xit "can multiply with a starting point" do
    end

    xit "can multiply with a symbol" do
    end

    xit "can multiply with a starting point and a symbol" do
    end
  end

  xcontext "can work with subtraction" do
    xit "can subtract" do
    end

    xit "can subtract with a starting point" do
    end

    xit "can subtract with a symbol" do
    end

    xit "can subtract with a starting point and a symbol" do
    end
  end

  xcontext "can work with division" do
    xit "can divide" do
    end

    xit "can divide with a starting point" do
    end

    xit "can divide with a symbol" do
    end

    xit "can divide with a starting point and a symbol" do
    end
  end
end

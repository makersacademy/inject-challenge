require 'array'

describe Array do
  subject { [5,6,7,8,9,10] }

  it "responds to crush_down" do
    expect(subject).to respond_to(:crush_down)
  end

  describe "#crush_down" do

    context "with a block" do

      it "injects plus into array and returns value" do
      expect(subject.crush_down { |sum, n| sum + n }).to eq 45
      end

      it "injects multiply into array and returns value" do
        expect(subject.crush_down { |sum, n| sum * n }).to eq 151200
      end

      it "injects divide into array and returns value" do
        array = [10,5,1]
        expect(array.crush_down { |sum, n| sum / n }).to eq 2
      end

      it "injects modulo into array and returns value" do
        array = [10,7,2]
        expect(array.crush_down { |sum, n| sum % n }).to eq 1
      end

      it "compares objects and returns value" do
        expect((%w{ cat sheep bear }).crush_down { |memo, word| (memo.length > word.length) ? (memo) : (word) }).to eq "sheep"
      end

    end

    context "with a block and initial value" do

      it "injects multiply into array and returns value" do
        expect(subject.crush_down(1) { |sum, n| sum * n }).to eq 151200
      end

      it "injects plus into array and returns value" do
        expect(subject.crush_down(1) { |sum, n| sum + n }).to eq 46
      end

      it "injects subtract into array and returns value" do
        arr = [5,2]
        expect(arr.crush_down(10) { |sum, n| sum - n }).to eq 3
      end

      it "injects divide into array and returns value" do
        arr = [5,2]
        expect(arr.crush_down(10) { |sum, n| sum / n }).to eq 1
      end

      it "injects modulo into array and returns value" do
        arr = [4,2]
        expect(arr.crush_down(11) { |sum, n| sum % n }).to eq 1
      end

    end

    context "with a symbol" do

      it "injects plus into array and returns value" do
      expect(subject.crush_down(:+)).to eq 45
      end

      it "injects multiply into array and returns value" do
        expect(subject.crush_down(:*)).to eq 151200
      end

      it "injects divide into array and returns value" do
        array = [10,5,1]
        expect(array.crush_down(:/)).to eq 2
      end

      it "injects modulo into array and returns value" do
        array = [10,7,2]
        expect(array.crush_down(:%)).to eq 1
      end

      it "injects subtract into array and returns value" do
        array = [10,7,2]
        expect(array.crush_down(:-)).to eq 1
      end

    end

    context "with a symbol and initial value" do

      it "injects multiply into array and returns value" do
        expect(subject.crush_down(1,:*)).to eq 151200
      end

      it "injects plus into array and returns value" do
        expect(subject.crush_down(1,:+)).to eq 46
      end


      it "injects subtract into array and returns value" do
        arr = [5,2]
        expect(arr.crush_down(10,:-)).to eq 3
      end

      it "injects divide into array and returns value" do
        arr = [5,2]
        expect(arr.crush_down(10,:/)).to eq 1
      end

      it "injects modulo into array and returns value" do
        arr = [4,2]
        expect(arr.crush_down(11,:%)).to eq 1
      end

    end

    describe "#recursive_crush_down" do

      context "with a block" do

        it "injects plus into array and returns value" do
        expect(subject.recursive_crush_down { |sum, n| sum + n }).to eq 45
        end

        it "injects multiply into array and returns value" do
          expect(subject.recursive_crush_down { |sum, n| sum * n }).to eq 151200
        end

        it "injects divide into array and returns value" do
          array = [10,5,1]
          expect(array.recursive_crush_down { |sum, n| sum / n }).to eq 2
        end

        it "injects modulo into array and returns value" do
          array = [10,7,2]
          expect(array.recursive_crush_down { |sum, n| sum % n }).to eq 1
        end

        it "compares objects and returns value" do
          expect((%w{ cat sheep bear }).recursive_crush_down { |memo, word| (memo.length > word.length) ? (memo) : (word) }).to eq "sheep"
        end

      end

      context "with a block and initial value" do

        it "injects multiply into array and returns value" do
          expect(subject.recursive_crush_down(1) { |sum, n| sum * n }).to eq 151200
        end

        it "injects plus into array and returns value" do
          expect(subject.recursive_crush_down(1) { |sum, n| sum + n }).to eq 46
        end

        it "injects subtract into array and returns value" do
          arr = [5,2]
          expect(arr.recursive_crush_down(10) { |sum, n| sum - n }).to eq 3
        end

        it "injects divide into array and returns value" do
          arr = [5,2]
          expect(arr.recursive_crush_down(10) { |sum, n| sum / n }).to eq 1
        end

        it "injects modulo into array and returns value" do
          arr = [4,2]
          expect(arr.recursive_crush_down(11) { |sum, n| sum % n }).to eq 1
        end

      end

    end

  end

end
require 'inject'

  describe Array do

  it 'can sum numbers' do
    expect([1,2,3,4,5].inject1(&:+)).to eq(15)
  end

  it 'can find the shortest word' do
          shortest_word = ["pot", "iron", "black", "magenta"].inject1 do |a, w|
          a.length < w.length ? a : w
        end
      expect(shortest_word).to eq("pot")
    end

  it 'can find the longest word' do
          longest_word = ["pot", "iron", "black", "magenta"].inject1 do |a, w|
          a.length > w.length ? a : w
        end
      expect(longest_word).to eq("magenta")
    end


  # it 'should equal inject method example' do
  #   expect{[1,2,3,4,5].inject(0)}.to eq {[1,2,3,4,5].inject2}
  # end


end
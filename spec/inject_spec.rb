require 'inject'

  describe Array do

 it 'should equal inject method example' do
    expect([1,2,3,4,5].inject).to eq {[1,2,3,4,5].inject2}
  end


end
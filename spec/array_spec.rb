describe Array do
  subject {[1,2,3,4]}
  describe 'faisal_inject' do
    it 'adds' do
      expect(subject.faisal_inject{|k,v| k + v}).to eq 10
    end
  end
end

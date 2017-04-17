require_relative '../lib/inject'

describe Array do

  context ".injector, when called upon an array" do
    
    it "[1,2,3,4,5].injector(0) {+ operation} to eq 15" do
      expect([1, 2, 3, 4, 5].injector(0){|x, y| x + y}).to eq(15)
    end

    it "[1,2,3,4,5].injector(5) {+ operation} to eq 20" do
      expect([1, 2, 3, 4, 5].injector(5){|x, y| x + y}).to eq(20)
    end

    it "[9,8,7,6,5].injector(0) {- operation} to eq -35" do
      expect([9,8,7,6,5].injector(0){|x, y| x - y}).to eq(-35)
    end

    it "[9,8,7,6,5].injector(5) {- operation} to eq -30" do
      expect([9,8,7,6,5].injector(5){|x, y| x - y}).to eq(-30)
    end

    it "[9,8,7,6,5].injector(0) {* operation} to eq 0" do
      expect([9,8,7,6,5].injector(0){|x, y| x * y}).to eq(0)
    end

    it "[9,8,7,6,5].injector(5) {* operation} to eq 75600" do
      expect([9,8,7,6,5].injector(5){|x, y| x * y}).to eq(75600)
    end

    it "[9,8,7,6,5].injector {* operation} to eq 15120" do
      expect([9,8,7,6,5].injector{|x, y| x * y}).to eq(15120)
    end

    it "[900,10].injector {/ operation} to eq 90" do
      expect([900,10].injector{|x, y| x / y}).to eq(90)
    end

    it "[-98777,-900].injector {/ operation} to eq 109" do
      expect([-98777,-900].injector{|x, y| x / y}).to eq(109)
    end   

  end 

end
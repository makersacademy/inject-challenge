require 'danject'

describe Array do # This doesn't match to e.g. hashes

  it 'can calculate sum of an array' do
    expect((0..24).to_a.danject { |accum, item| accum + item }
    ).to eq((0..24).to_a.inject { |accum, item| accum + item })
  end

  it 'can calculate product of an array' do
    expect((0..24).to_a.danject { |accum, item| accum * item }
    ).to eq(0)
  end

  it 'can flatten and concatenate a hash' do
    hash = Hash.new
    hash["one"] = 37
    hash["two"] = 42
    expect(hash.danject { |accum, item| accum.to_s + item.flatten.to_s }
    ).to eq(hash.inject { |accum, item| accum.to_s + item.flatten.to_s })
  end

  it 'can calculate sum of an array with an initial value passed to it' do
    expect((0..24).to_a.danject(5) { |accum, item| accum + item }
    ).to eq(305)
  end

  it 'can flatten a hash with an initial value passed to it' do
    hash = Hash.new
    hash["one"] = 37
    hash["two"] = 42
    expect(hash.danject({ "zero" => 32 }
    ) { |accum, item| accum.to_s + item.flatten.to_s }
    ).to eq(hash.inject({ "zero" => 32 }
    ) { |accum, item| accum.to_s + item.flatten.to_s })
  end
end

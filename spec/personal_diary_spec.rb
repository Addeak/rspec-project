require 'personal_diary'

describe "make_snippet method" do
  it "returns the first five words and ..." do
    result = make_snippet("I had a jacket delivered today and it was great!")
    expect(result).to eq "I had a jacket delivered..."
  end
end
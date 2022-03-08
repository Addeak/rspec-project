require 'personal_diary'

RSpec.describe DiaryEntry do
  it "returns the title as a string" do
    entry = DiaryEntry.new("03-12-21", "So much exciting stuff happened today. OMG!!")
    result = entry.title
    expect(result).to eq "03-12-21"
  end

  it "returns the contents as a string" do
    entry = DiaryEntry.new("03-12-21", "So much exciting stuff happened today. OMG!!")
    result = entry.contents
    expect(result).to eq "So much exciting stuff happened today. OMG!!"
  end
end
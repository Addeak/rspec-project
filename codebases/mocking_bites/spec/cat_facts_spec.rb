require 'cat_facts'

RSpec.describe CatFacts do
  it "provides a cat fact" do
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get).with(URI("https://catfact.ninja/fact"))
    .and_return('{"fact":"Purring does not always indicate that a cat is happy. Cats will also purr loudly when they are distressed or in pain.","length":117}')
    fact = CatFacts.new(requester_dbl)
    expect(fact.provide).to eq "Cat fact: Purring does not always indicate that a cat is happy. Cats will also purr loudly when they are distressed or in pain."
  end
end
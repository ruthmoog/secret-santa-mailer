require 'santa'

RSpec.describe "Santa" do
  it "matches a giver with a receiver" do
    secret_santa = Santa.new
    expect(secret_santa.match(["Dasher", "Dancer"])).to eq(["Dancer", "Dasher"])
  end
end

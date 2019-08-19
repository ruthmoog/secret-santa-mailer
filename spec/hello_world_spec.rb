require 'santa'

RSpec.describe "Hello World" do
  it "says hello world" do
    expect(Santa.new.say_hi).to eq("Hello world!")
  end
end

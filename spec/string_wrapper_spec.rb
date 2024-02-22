require "string_wrapper"

RSpec.describe StringWrapper do
    let(:test_string) { StringWrapper.new("Hello") }
    describe "#reverse" do
        it "reverses the string" do
            expect(test_string.reverse).to eq("olleH")
        end
    end

    describe "#upcase" do
        it "converts the string to uppercase" do
            expect(test_string.upcase).to eq("HELLO")
        end
    end

    describe "#downcase" do
        it "converts the string to lowercase" do
            expect(test_string.downcase).to eq("hello")
        end
    end
end
  
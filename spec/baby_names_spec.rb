require "spec_helper"

RSpec.describe BabyNames::Hadley do
  before(:all) do
    @hadley = BabyNames::Hadley.new
  end

  describe "#names" do
    it "has John as the first name" do
      name = @hadley.names.first
      expect(name.name).to eq("John")
      expect(name.gender).to eq(:male)
    end

    it "has Elianna as the last name" do
      name = @hadley.names.last
      expect(name.name).to eq("Elianna")
      expect(name.gender).to eq(:female)
    end

    it "has 258,000 names" do
      expect(@hadley.names.size).to eq(258_000)
    end
  end
end

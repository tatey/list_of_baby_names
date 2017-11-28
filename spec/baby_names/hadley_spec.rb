require "spec_helper"

RSpec.describe BabyNames::Hadley do
  before(:all) do
    @data_set = BabyNames::Hadley.new
  end

  describe "#names" do
    it "has John as the first name" do
      name = @data_set.names.first
      expect(name.name).to eq("John")
      expect(name.gender).to eq(:male)
    end

    it "has Elianna as the last name" do
      name = @data_set.names.last
      expect(name.name).to eq("Elianna")
      expect(name.gender).to eq(:female)
    end

    it "has 258,000 names" do
      expect(@data_set.names.size).to eq(258_000)
    end
  end
end

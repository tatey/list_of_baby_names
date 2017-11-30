require "spec_helper"

RSpec.describe BabyNames do
  describe ".data_sets" do
    it "is all the data sets" do
      expect(BabyNames.data_sets).to contain_exactly(BabyNames::SouthAustralia)
    end
  end

  describe ".hadley" do
    before(:all) do
      @data_set = BabyNames.hadley
    end

    it "has John as the first name" do
      name = @data_set.first
      expect(name.name).to eq("John")
      expect(name.gender).to eq(:male)
    end

    it "has Elianna as the last name" do
      name = @data_set.last
      expect(name.name).to eq("Sloane")
      expect(name.gender).to eq(:female)
    end

    it "has 258,000 names" do
      expect(@data_set.size).to eq(258_000)
    end
  end
end

require "spec_helper"

RSpec.describe BabyNames::SouthAustralia do
  before(:all) do
    @data_set = BabyNames::SouthAustralia.new
  end

  describe "#names" do
    it "has Charlotte as the first name" do
      name = @data_set.names.first
      expect(name.name).to eq("Charlotte")
      expect(name.gender).to eq(:female)
    end

    it "has Zuriel as the last name" do
      name = @data_set.names.last
      expect(name.name).to eq("Zuriel")
      expect(name.gender).to eq(:male)
    end

    it "has 5,254 names" do
      expect(@data_set.names.size).to eq(5_254)
    end
  end
end

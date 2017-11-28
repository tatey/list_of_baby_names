require "spec_helper"

RSpec.describe BabyNames do
  describe ".data_sets" do
    it "is all the data sets" do
      expect(BabyNames.data_sets).to contain_exactly(BabyNames::Hadley, BabyNames::SouthAustralia)
    end
  end
end

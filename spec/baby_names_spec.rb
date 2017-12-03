require "spec_helper"

RSpec.describe BabyNames do
  describe ".data_sets" do
    it "is an array of symbols" do
      expect(BabyNames.data_sets).to contain_exactly(:hadley, :south_australia, :queensland)
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
      expect(name.year).to eq(1880)
      expect(name.position).to eq(1)
    end

    it "has Elianna as the last name" do
      name = @data_set.last
      expect(name.name).to eq("Sloane")
      expect(name.gender).to eq(:female)
      expect(name.year).to eq(2008)
      expect(name.position).to eq(1000)
    end

    it "has 258,000 names" do
      expect(@data_set.size).to eq(258_000)
    end
  end

  describe ".south_australia" do
    before(:all) do
      @data_set = BabyNames.south_australia
    end

    it "has Charlotte as the first name" do
      name = @data_set.first
      expect(name.name).to eq("Oliver")
      expect(name.gender).to eq(:male)
      expect(name.year).to eq(2016)
      expect(name.position).to eq(1)
    end

    it "has Zuriel as the last name" do
      name = @data_set.last
      expect(name.name).to eq("Zymeliah")
      expect(name.gender).to eq(:female)
      expect(name.year).to eq(2016)
      expect(name.position).to eq(839)
    end

    it "has 5,254 names" do
      expect(@data_set.size).to eq(5_254)
    end
  end

  describe ".queensland" do
    before(:all) do
      @data_set = BabyNames.queensland
    end

    it "has Charlotte as the first name" do
      name = @data_set.first
      expect(name.name).to eq("Charlotte")
      expect(name.gender).to eq(:female)
      expect(name.year).to eq(2016)
      expect(name.position).to eq(1)
    end

    it "has Jonathan as the last name" do
      name = @data_set.last
      expect(name.name).to eq("Jonathan")
      expect(name.gender).to eq(:male)
      expect(name.year).to eq(2006)
      expect(name.position).to eq(84)
    end

    it "has 2,222 names" do
      expect(@data_set.size).to eq(2_222)
    end
  end
end

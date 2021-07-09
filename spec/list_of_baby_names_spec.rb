require "spec_helper"

RSpec.describe ListOfBabyNames do
  describe ".data_sets" do
    it "is an array of symbols" do
      expect(ListOfBabyNames.data_sets).to contain_exactly(:behindthename, :hadley, :south_australia, :queensland)
    end
  end

  describe ".behindthename" do
    before(:all) do
      @data_set = ListOfBabyNames.behindthename
    end

    it "has Aabraham as the first name" do
      name = @data_set.first
      expect(name.name).to eq("Aabraham")
      expect(name.gender).to eq(:male)
      expect(name.year).to eq(-1)
      expect(name.position).to eq(-1)
    end

    it "has Zyta as the last name" do
      name = @data_set.last
      expect(name.name).to eq("Zyta")
      expect(name.gender).to eq(:female)
      expect(name.year).to eq(-1)
      expect(name.position).to eq(-1)
    end

    it "has unisex names" do
      aaren = @data_set.find { |name| name.name == "Aaren" }
      expect(aaren.gender).to eq(:unisex)

      addison = @data_set.find { |name| name.name == "Addison" }
      expect(addison.gender).to eq(:unisex)
    end

    it "has 23,355 names" do
      expect(@data_set.size).to eq(23_355)
    end
  end

  describe ".hadley" do
    before(:all) do
      @data_set = ListOfBabyNames.hadley
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
      @data_set = ListOfBabyNames.south_australia
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
      @data_set = ListOfBabyNames.queensland
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

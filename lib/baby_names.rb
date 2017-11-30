require "baby_names/data_set"
require "baby_names/version"

module BabyNames
  def self.data_sets
    [:hadley, :south_australia]
  end

  # US Data Set
  #
  # Distribution of US baby names, 1880-2008
  # https://github.com/hadley/data-baby-names
  #
  # @return [Array<Name>]
  def self.hadley
    DataSet.load_file(File.expand_path("../../db/hadley.csv", __FILE__))
  end

  # South Australia Data Set
  #
  # Top Baby Names Female - 2016
  # https://data.sa.gov.au/data/dataset/popular-baby-names/resource/5e58668a-8150-4c0a-b17e-d55636a318be
  #
  # Top Baby Names Male - 2016
  # https://data.sa.gov.au/data/dataset/popular-baby-names/resource/138f3cf7-edd6-4af2-85c6-2639dbbf04ae
  #
  # @return [Array<Name>]
  def self.south_australia
    DataSet.load_file(File.expand_path("../../db/south_australia.csv", __FILE__))
  end
end

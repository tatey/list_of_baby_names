require "baby_names/data_set"
require "baby_names/south_australia"
require "baby_names/version"

module BabyNames
  def self.data_sets
    [SouthAustralia]
  end
end

module BabyNames
  def self.hadley
    DataSet.load_file(File.expand_path("../../db/hadley.csv", __FILE__))
  end
end

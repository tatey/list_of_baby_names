require "baby_names/data_set"
require "baby_names/version"

module BabyNames
  def self.data_sets
    [:hadley, :south_australia]
  end

  def self.hadley
    DataSet.load_file(File.expand_path("../../db/hadley.csv", __FILE__))
  end

  def self.south_australia
    DataSet.load_file(File.expand_path("../../db/south_australia.csv", __FILE__))
  end
end

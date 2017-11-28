require "baby_names/hadley"
require "baby_names/south_australia"
require "baby_names/version"

module BabyNames
  def self.data_sets
    [Hadley, SouthAustralia]
  end
end

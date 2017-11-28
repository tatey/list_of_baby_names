# South Australia Data Set
#
# Top Baby Names Female - 2016
# https://data.sa.gov.au/data/dataset/popular-baby-names/resource/5e58668a-8150-4c0a-b17e-d55636a318be
# Top Baby Names Male - 2016
# https://data.sa.gov.au/data/dataset/popular-baby-names/resource/138f3cf7-edd6-4af2-85c6-2639dbbf04ae

require "csv"
require "baby_names/name"

module BabyNames
  class SouthAustralia
    def names
      @names ||= load_names(female_path, :female) + load_names(male_path, :male)
    end

    private

    def female_path
      File.expand_path("../../../db/south_australia_female.csv", __FILE__)
    end

    def male_path
      File.expand_path("../../../db/south_australia_male.csv", __FILE__)
    end

    def load_names(path, gender)
      CSV.read(path, headers: true).map do |row|
        Name.new(
          name: row["Given Name"].capitalize,
          gender: gender,
        )
      end
    end
  end
end

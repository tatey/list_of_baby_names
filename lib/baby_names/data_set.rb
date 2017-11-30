require "csv"
require "baby_names/name"

module BabyNames
  class DataSet
    GENDERS = {"m" => :male, "f" => :female}

    def self.load_file(path)
      CSV.foreach(path, headers: true).map do |row|
        Name.new(
          name: row["name"],
          gender: GENDERS[row["gender"]],
          year: row["year"].to_i,
          position: row["position"].to_i,
        )
      end
    end
  end
end
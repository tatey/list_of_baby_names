require "csv"
require "baby_names/name"

module BabyNames
  class DataSet
    GENDERS = {"m" => :male, "f" => :female, "mf" => :unisex, "fm" => :unisex}

    def self.load_file(path, **options)
      CSV.foreach(path, headers: true, **options).map do |row|
        Name.new(
          name: row["name"],
          gender: GENDERS[row["gender"]],
          year: (row["year"] || -1).to_i,
          position: (row["position"] || -1).to_i,
        )
      end
    end
  end
end

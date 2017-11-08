# Hadley Data Set
#
# Distribution of US baby names, 1880-2008
# https://github.com/hadley/data-baby-names

require "csv"
require "baby_names/name"

module BabyNames
  class Hadley
    def names
      @names ||= CSV.read(path, headers: true).map do |row|
        Name.new(
          name: extract_name(row),
          gender: extract_gender(row),
        )
      end
    end

    private

    def path
      File.expand_path("../../../db/hadley.csv", __FILE__)
    end

    def extract_name(row)
      row["name"] || raise("name must be specified")
    end

    def extract_gender(row)
      sex = row["sex"]
      case sex
      when "boy"
        :male
      when "girl"
        :female
      else
        raise "uncategorized gender: #{sex}"
      end
    end
  end
end

# https://data.qld.gov.au/dataset/top-100-baby-names/resource/3180a908-f18a-4597-a153-d0cd10c70dc6
#
# usage: ruby queensland.rb /Users/Tate/Desktop/20160201_BDM_Top-100-Baby-Names-2014.csv 2014

require "csv"

file = File.expand_path(ARGV[0])
year = ARGV[1]

names = []

position = 0
count = 9999999999

CSV.foreach(file, headers: true) do |row|
  new_count = row["Count of Girl Names"]
  if count != new_count
    position += 1
    count = new_count
  end

  name = {
    year: year,
    name: row["Girl Names"],
    gender: "f",
    position: position,
  }

  if name.values.any?(&:nil?)
    next
  end

  names << name
end

position = 0
count = 9999999999

CSV.foreach(file, headers: true) do |row|
  new_count = row["Count of Boy Names"]
  if count != new_count
    position += 1
    count = new_count
  end

  name = {
    year: year,
    name: row["Boy Names"],
    gender: "m",
    position: position,
  }

  if name.values.any?(&:nil?)
    next
  end

  names << name
end

str = CSV.generate do |csv|
  csv << names.first.keys
  names.each do |name|
    csv << name.values
  end
end

puts str

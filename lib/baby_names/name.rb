module BabyNames
  class Name
    attr_reader :name, :gender, :year, :position

    def initialize(name:, gender:, year:, position:)
      @name = name
      @gender = gender
      @year = year
      @position = position
    end
  end
end

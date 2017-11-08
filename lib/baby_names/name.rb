module BabyNames
  class Name
    attr_reader :name, :gender

    def initialize(name:, gender:)
      @name = name
      @gender = gender
    end
  end
end

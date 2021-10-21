require 'bundler'
Bundler.require

class Case
    attr_accessor :name , :value

    def initialize(name_to_save)
        @name = name_to_save
        @value = " "
    end

end


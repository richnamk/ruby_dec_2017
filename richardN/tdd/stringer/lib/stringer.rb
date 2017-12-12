require "stringer/version"

module Stringer
    def self.spacify *strings
        string = ""
        strings.each_with_index do |s, index|
            string += s
            string += " " if index < strings.length - 1
        end
        string
    end

    def self.minify(str, size)
        return str if str.length <= size
        return str[0..size - 1] + "..."
    end

    def self.replacify(str, target, replacement)
        return str.sub(target, replacement)
    end

    def self.tokenize(str)
      return str.split
    end

    def self.removify(str, target)
      return str.sub(target, "")
    end
end


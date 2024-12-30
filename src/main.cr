require "json"

# Define a struct for the font definition
struct FontDef
    getter name : String
    getter sizes : Array(Int32)

    def initialize(name : String, sizes : Array(Int32))
        @name = name
        @sizes = sizes
    end
end

# Create the font_defs array with FontDef instances
font_defs = {
    "defs" => [
        FontDef.new("roboto-regular", [16, 18, 20, 24, 28, 32, 36, 48])
    ].map do |font_def|
        font_def.sizes.map do |size|
        {"name" => font_def.name, "size" => size}
        end
    end.flatten
}
  

# Convert to JSON
json_string = font_defs.to_json
puts json_string

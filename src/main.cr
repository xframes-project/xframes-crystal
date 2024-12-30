require "json"

font_defs = {
  "defs" => [
    {"name" => "roboto-regular", "sizes" => [16, 18, 20, 24, 28, 32, 36, 48]}
  ].map do |entry|
    name = entry["name"].as(String)
    sizes = entry["sizes"].as(Array(Int32))
    sizes.map do |size|
      {"name" => name, "size" => size}
    end
  end.flatten
}

# Convert to JSON
json_string = font_defs.to_json
puts json_string

require "json"

# Turns a passed in json string into a full blown ruby/liquid object.
module Objectify
  def objectify(json)
    json = JSON.parse(json)
    return json
  end
end

Liquid::Template.register_filter(Objectify)
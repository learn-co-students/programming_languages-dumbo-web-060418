require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  #hash[:my_key] = "my value"
  #hash[:my_key] = {second_level_key: "second level value"}
=begin =>
          {
            my_key: {
              second_level_key: "second level value"
          }
        }
=end

=begin
new_hash[key][:style] = [:oo]
use << unles multiple values won't work, e.g. Javascript =>
=end

  languages.each do |k, v|
    v.each do |key, value|

        if new_hash[key] == nil
          new_hash[key] = value
          new_hash[key][:style] = []
        end
          new_hash[key][:style] << k

      end
    end
  new_hash
end

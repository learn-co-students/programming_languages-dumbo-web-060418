require "pry"

def reformat_languages(languages)
refLan = {}
languages.each do |sty, info|
  info.each do |lan, det|
  refLan[lan] ||= det
  refLan[lan][:style] ||= []
  refLan[lan][:style] << sty
end
end
return refLan
end

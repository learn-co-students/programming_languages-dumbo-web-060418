

def reformat_languages(languages)
  newHash = {}
  
  languages.each do |family, language|
    language.each do |lang_name, info|
      if newHash[lang_name]
        newHash[lang_name][:style] << family      
      else
        info[:style] = [family]
        newHash[lang_name] = info
      end      
    end
  end
  return newHash
end


 def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style_key, language|
    language.each do |language_key, data_type|
      data_type.each do |data_type_key, data|
        if new_hash[language_key]
          new_hash[language_key][:style] << style_key
        else
        new_hash[language_key] = {data_type_key => data, :style => [style_key]}
      end
  end
  end
  end
  new_hash
end


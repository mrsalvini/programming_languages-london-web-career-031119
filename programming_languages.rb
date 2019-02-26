require 'pry'

def reformat_languages(languages)

  new_hash = {}

  # first step adds the languages level and adds type
  languages.each { |style, lang_hash|

    lang_hash.each { |lang, type_hash|
      if new_hash.member?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang] = {
          type: ""
        }

        new_hash[lang][:style] = [style]

        type_hash.each { |type, type_string|
          new_hash[lang][type] = type_string
        }
      end
    }
  }

  # now we do the type spearately because it has more intricacies


  new_hash

end

class Substrings
    def substrings(words, dict)
        return_words = Hash.new

        words.downcase.split(/\W+/).each { |word|
            dict.each { |w|
                if (word.include?(w))
                    if (return_words.key?(w))
                        return_words[w] += 1
                    else
                        return_words[w] = 1
                    end
                end
            }
        }
        return_words
    end
end
require('./lib/substrings.rb')

describe('Substrings') do
    describe('substrings') do
        it ('returns the correct hash from the dictionary and word given') do
            substrings = Substrings.new
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            word = "below"
            expect(substrings.substrings(word, dictionary)).to eql({"below"=>1, "low"=>1})
        end

        it ('returns the correct hash from the dictionary and phrase given') do
            substrings = Substrings.new
            expected_hash = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            phrase = "Howdy partner, sit down! How's it going?"
            expect(substrings.substrings(phrase, dictionary) == expected_hash).to eql(true)
        end
    end
end
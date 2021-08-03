require('./lib/caesar_cipher.rb')

# Run test with `rspec spec/caesar_cipher_spec.rb`

describe CaesarCipher do
    describe "caesarify" do
        it 'should return the correctly caesarified cipher' do
            cipher = CaesarCipher.new
            expect(cipher.caesarify('What a string!', 5)).to eql('Bmfy f xywnsl!')
        end
    end
end

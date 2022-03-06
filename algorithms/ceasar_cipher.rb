class Caesar
    attr_accessor :key

    def initialize(key)
        @key = key
    end

    def _shift(text, is_encrypting = true)
        shifted_text = ''
        text.each_char do |letter|
            unless letter == ' '
                shifted_index = is_encrypting ? letter.ord + key : letter.ord - key
                shifted_text.concat(shifted_index.modulo(256).chr)
            else
                shifted_text.concat(' ')
            end
        end
        return shifted_text
    end

    def encrypt(plain_text)
        return _shift(plain_text)
    end

    def decrypt(encrypted_text)
        return _shift(encrypted_text, false)
    end
end
 
caesar_cipher = Caesar.new(50)
encrypted_text = caesar_cipher.encrypt('Hello World')
decrypted_text = caesar_cipher.decrypt(encrypted_text)
puts encrypted_text
puts decrypted_text

def caesar_cipher_encrypt(plain_text, shift_amt)
    encrypted_text = ''
    plain_text.each_char do |letter|
        unless letter == ' '
            encrypted_text.concat((letter.ord + shift_amt).modulo(255).chr)
        else
            encrypted_text.concat(' ')
        end
    end
    return encrypted_text
end

def caesar_cipher_decrypt(encrypted_text, shift_amt)
    decrypted_text = ''
    encrypted_text.each_char do |letter|
        unless letter == ' '
            decrypted_text.concat((letter.ord - shift_amt).modulo(255).chr)
        else
            decrypted_text.concat(' ')
        end
    end
    return decrypted_text
end
 
a = caesar_cipher_encrypt('hello world', 256)
puts a

puts caesar_cipher_decrypt(a, 256)

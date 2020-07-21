# Aes.rb
# ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

require 'openssl'

class Aes
    def initialize(key_size)
        @key_size = key_size
        @key = nil
        @iv = nil
    end

    def encrypt(plaintext)
        cipher = OpenSSL::Cipher::AES.new(@key_size, :CBC)
        cipher.encrypt
        @key = cipher.random_key
        @iv = cipher.random_iv
        #https://docs.ruby-lang.org/en/2.4.0/OpenSSL/Cipher.html#class-OpenSSL::Cipher-label-Calling+Cipher-23final
        encrypted = cipher.update(plaintext) + cipher.final

    end

    def decrypt(ciphertext)
        if (@key == nil) then
            p 'no do decrypt first'
            return
        end
        decipher = OpenSSL::Cipher::AES.new(@key_size, :CBC)
        decipher.decrypt
        decipher.key = @key
        decipher.iv = @iv
        decrypted = decipher.update(ciphertext) + decipher.final
    end

end

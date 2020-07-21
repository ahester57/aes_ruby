# Hester_Project2.rb
# ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

require_relative 'Aes'
require_relative 'Lorem'

class Hester_Project2
	def initialize
        $stdout.sync = true
        menu
	end

    private def menu
        puts( "\n1:\tAES Encrypt" )
        puts( "2:\tGenerate Bullcrap" )
        puts( "0:\tExit" )
        response = readline
        case response.chars[0]
        when "1"
            aes_encrypt_and_decrypt
        when "2"
            lorem = Lorem.new
            lorem.make_files
        when "0"
            puts "Goodbye."
        else
            menu
        end
    end

    private def aes_encrypt_and_decrypt
        aes = Aes.new
        print( "\nEnter plain text: " )
        plain_text = readline
        puts 'encrypting'
        cipher = aes.encrypt(plain_text)
        puts( "Cipher:\t" + cipher )
        puts 'decrypting'
        plain_again = aes.decrypt(cipher)
        puts( "Plain:\t" + plain_again )
        menu
    end

    private def menu_hash
        puts 'hahshs'
        menu
    end

end


Hester_Project2.new


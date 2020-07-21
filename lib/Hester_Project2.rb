# Hester_Project2.rb
# ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

require_relative 'Aes'
require_relative 'Lorem'

class Hester_Project2
	def initialize
        $stdout.sync = true
        @lorem = Lorem.new
        menu
	end

    private def menu
        puts( "\n1:\tAES Encrypt" )
        puts( "2:\tGenerate Bullcrap" )
        puts( "3:\tEncrypt/Decrypt Files" )
        puts( "0:\tExit" )
        response = readline
        case response.chars[0]
        when "1"
            aes_encrypt_and_decrypt(Aes.new)
        when "2"
            @lorem.make_files
            menu    # i know recursion is bad for menus. T-23 min til due
            return
        when "3"
            encrypt_decrypt_files(Aes.new)
        when "0"
            puts "Goodbye."
        else
            menu
        end
    end

    private def aes_encrypt_and_decrypt(aes)
        print( "\nEnter plain text: " )
        plain_text = readline
        cipher = encrypt(aes, plain_text)
        puts( "Cipher:\t" + cipher )
        plain_again = decrypt(aes, cipher)
        puts( "Plain:\t" + plain_again )
        menu
    end

    private def encrypt(aes, msg)
        puts 'encrypting'
        aes.encrypt(msg)
    end

    private def decrypt(aes, msg)
        puts 'decrypting'
        aes.decrypt(msg)
    end

    private def encrypt_decrypt_files(aes)
        puts( "\nHow Big" )
        puts( "1:\ttiny" )
        puts( "2:\tmedium" )
        puts( "3:\tvv big" )
        puts( "0:\tExit" )
        response = readline
        case response.chars[0]
        when "1"
            plain_text = @lorem.get_small
        when "2"
            plain_text = @lorem.get_medium
        when "3"
            plain_text = @lorem.get_big
        when "0"
            menu
            return
        else
            encrypt_decrypt_files(aes)
            return
        end
        cipher = encrypt(aes, plain_text)
        puts( "Cipher:\t" + cipher )
        plain_again = decrypt(aes, cipher)
        puts( "Plain:\t" + plain_again )
        encrypt_decrypt_files(aes)
    end

end


Hester_Project2.new


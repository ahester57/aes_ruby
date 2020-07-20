# Hester_Project2.rb
# ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]


class Hester_Project2
	def initialize
        $stdout.sync = true
        menu
	end

    private def menu
        puts( "\n1:\tAES Encrypt" )
        puts( "2:\tAES Decrypt" )
        puts( "3:\tHash" )
        puts( "0:\tExit" )
        response = readline
        case response.chars[0]
        when "1"
            menu_encrypt
        when "2"
            menu_decrypt
        when "3"
            menu_test
        when "0"
            puts "Goodbye."
        else
            menu
        end
    end

    private def menu_encrypt
        puts 'encryp'
        menu
    end

    private def menu_decrypt
        puts 'dencryp'
        menu
    end

    private def menu_hash
        puts 'hahshs'
        menu
    end

end


Hester_Project2.new


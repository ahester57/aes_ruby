# Lorem.rb
# ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

require 'betterlorem'

class Lorem
    def initialize
        @small = "./out/bs_small.txt"
        @medium = "./out/bs_medium.txt"
        @big = "./out/bs_big.txt"
    end

    def make_files
        if (!Dir.exists?("./out")) then
            Dir.mkdir("./out")
        end

        f1 = generate_bullcrap(3)
        File.write(@small, f1)
        f2 = generate_bullcrap(3000)
        File.write(@medium, f2)
        f3 = generate_bullcrap(3000) * 400
        File.write(@big, f3)

        puts( "Bullcrap written to ./out" )
    end

    def generate_bullcrap(how_much)
        BetterLorem.c(how_much, true)  # <- Generate characters
    end

    def get_small
        File.read(@small)
    end

    def get_medium
        File.read(@medium)
    end

    def get_big
        File.read(@big)
    end

end

# Lorem.rb
# ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

require 'betterlorem'

class Lorem
    def initialize
        @small = "./out/bs_small.txt"
        @medium = "./out/bs_medium.txt"
        @big = "./out/bs_big.txt"
        @very_medium = "./out/bs_very_medium.txt"
        @very_big = "./out/bs_very_big.txt"
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
        f4 = generate_bullcrap(3000) * 400 * 225
        File.write(@very_medium, f4)
        f5 = generate_bullcrap(3000) * 400 * 300
        File.write(@very_big, f5)

        puts( "Bullcrap written to ./out" )
    end

    def generate_bullcrap(how_much)
        BetterLorem.c(how_much, true)  # <- Generate characters
    end

    def get_small
        if (File.file?(@small)) then
            File.read(@small)
        else
            generate_bullcrap(3)
        end
    end

    def get_medium
        if (File.file?(@medium)) then
            File.read(@medium)
        else
            generate_bullcrap(3000)
        end
    end

    def get_big
        if (File.file?(@big)) then
            File.read(@big)
        else
            generate_bullcrap(3000)*400
        end
    end

    def get_very_medium
        if (File.file?(@very_medium)) then
            File.read(@very_medium)
        else
            generate_bullcrap(3000)*400*225
        end
    end

    def get_very_big
        if (File.file?(@very_big)) then
            File.read(@very_big)
        else
            generate_bullcrap(3000)*400*300
        end
    end
end

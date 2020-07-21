# Hester_Project2.rb
# ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

require 'betterlorem'

class Lorem

    def make_files
        if (!Dir.exists?("./out")) then
            Dir.mkdir("./out")
        end

        f1 = generate_bullcrap(3)
        File.write("./out/bs_small.txt", f1)
        f2 = generate_bullcrap(3000)
        File.write("./out/bs_medium.txt", f2)
        f3 = generate_bullcrap(3000) * 100
        File.write("./out/bs_big.txt", f3)

        puts( "Bullcrap written to ./out" )
    end

    def generate_bullcrap(how_much)
        BetterLorem.c(how_much, true)  # <- Generate characters
    end
end
require 'betterlorem'

class Lorem

    def generate_bullcrap(how_much)
        BetterLorem.c(how_much, true)  # <- Generate characters
    end
end
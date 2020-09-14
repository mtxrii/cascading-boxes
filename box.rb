x = 4


string = "+"

i = 0
while i < x
    string += "-+" + "\n"
    j = 0
    while j < i
        string += "  "
        j += 1
    end
    string += "| |" + "\n"
    j = 0
    while j < i
        string += "  "
        j += 1
    end
    string += "+-+"
    i += 1
end

puts string

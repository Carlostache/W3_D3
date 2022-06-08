require "byebug"

def pascal_row(n)
    return [1] if n == 0
    return [1, 1] if n == 1

    last_row = pascal_row(n - 1)
    new_row = []

    (0...last_row.length - 1).each do |i|
        new_row << last_row[i] + last_row[i + 1]
    end


    new_row.unshift(1)
    new_row << 1
end

p pascal_row(0)
p pascal_row(1)
p pascal_row(2)
p pascal_row(3)
p pascal_row(4)
p pascal_row(5)
p pascal_row(6)

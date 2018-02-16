# Cipher
# https://www.hackerearth.com/practice/basic-programming/input-output/basics-of-input-output/practice-problems/algorithm/cipher-1/

# 97 - 122 | 65 - 90
#  a - z   |  A - Z

def solve()
    puts encode(gets.chomp, gets.chomp.to_i)
end

def get_limits(value)
    if value >= 97 and value <= 122
        return [97, 122, 26]
    elsif value >= 65 and value <= 90
        return [65, 90, 26]
    elsif value >= 48 and value <= 57
        return [48, 57, 10]
    else
        return nil
    end
end

def rotate(char, offset)
    value = char.ord
    rtd_val = value + offset
    min, max, range_length = get_limits(value)

    return char if max == nil

    while rtd_val > max
        rtd_val -= range_length
    end

    return rtd_val.chr
end

def encode(code, offset)
    encoded_val = ''
    for i in 0..(code.length() - 1)
        encoded_val += rotate(code[i], offset)
    end
    return encoded_val
end


def rotate_test()
    puts "#{rotate('A', 5)} = F"
    puts "#{rotate('Y', 4)} = C"
    puts "#{rotate('a', 3)} = d"
    puts "#{rotate('z', 4)} = d"
    puts "#{rotate('5', 2)} = 7"
    puts "#{rotate('8', 4)} = 2"
    puts "#{rotate('$', 4)} = $"
end

def test()
    t1 = encode('All-convoYs-9-be:Alert1.', 4)
    a1 = 'Epp-gsrzsCw-3-fi:Epivx5.'
    puts "#{t1}\n#{a1}\n#{t1 == a1}"
end

test
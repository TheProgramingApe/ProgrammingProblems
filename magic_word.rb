# Magical Word
# https://www.hackerearth.com/practice/basic-programming/input-output/basics-of-input-output/practice-problems/algorithm/magical-word/

$prime_ascii = [67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113]

def solve()
    no_of_test = gets.chomp.to_i
    no_of_test.times do
        test_word_len = gets.chomp
        test_word = gets.chomp
        puts magical_word(test_word)
    end
end

def is_prime(n)
    return true if n == 2
    for i in 2..(Math.sqrt(n).ceil)
        return false if n % i == 0
    end
    return true
end

def nearest_value(value, list)
    list_len = list.length
    mid_left = list_len / 2 - 1
    mid_right = list.length / 2

    return list[0] if list_len == 1

    l_diff = (list[mid_left] - value).abs
    r_diff = (list[mid_right] - value).abs

    if l_diff <= r_diff 
        return nearest_value(value, list[0..mid_left])
    else
        return nearest_value(value, list[mid_right..-1])
    end
end

def magical_letter(letter)
    value = letter.ord
    return nearest_value(value, $prime_ascii).chr
end

def magical_word(word)
    m_word = ''
    for i in 0..word.length - 1
        m_word += magical_letter(word[i])
    end
    return m_word
end

def magical_word_test()
    test_value = 'AFREEN'
    exp_ans = 'CGSCCO'
    act_ans = magical_word(test_value)
    puts "Exp: #{exp_ans}\nAct: #{act_ans}\n#{exp_ans == act_ans}"
end

def nearest_value_test()
    def test(test_val, exp)
        test_res = nearest_value(test_val, $prime_ascii)
        puts "nearest_value(#{test_val})\t#{exp}\t#{test_res}\t#{exp == test_res}"
    end

    puts "Test Value\t\tExp\tAct\tResult"
    puts "---------\t\t---\t---\t------"
    test(79, 79)
    test(67, 67)
    test(100, 89)
    test(50, 67)
    test(75, 73)
    test(70, 71)
    test(124, 123)
end

solve
# magical_word_test
# Roy and Profile Picture
# https://www.hackerearth.com/practice/basic-programming/input-output/basics-of-input-output/practice-problems/algorithm/roy-and-profile-picture/

def array_to_i(array)
    array.length.times do |i|
        array[i] = array[i].to_i
    end
    return array
end

def inputs()
    min_dimen = gets.chomp.to_i
    no_of_pics = gets.chomp.to_i
    pic_dimens = []
    no_of_pics.times do
        w_h = array_to_i(gets.chomp.split(' '))
        pic_dimens.push w_h
    end
    return [min_dimen, pic_dimens]
end

def solve()
    input = inputs()
    min_dimen = input[0]
    pic_dimens = input[1]
    pic_dimens.each do |x|
        puts upload_picture(min_dimen, x[0], x[1])
    end
end

def test()
    puts "#{upload_picture(180, 640, 480)} = CROP IT"
    puts "#{upload_picture(180, 120, 300)} = UPLOAD ANOTHER"
    puts "#{upload_picture(180, 180, 180)} = ACCEPTED"
end

def upload_picture(min_dimen, width, height)
    if width < min_dimen or height < min_dimen
        return 'UPLOAD ANOTHER'
    else
        return width == height ? 'ACCEPTED' : 'CROP IT'
    end
end

solve
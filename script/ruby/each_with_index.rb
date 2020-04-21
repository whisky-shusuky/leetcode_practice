# @param {String} keyboard
# @param {String} word
# @return {Integer}
# each_with_index およびabs(絶対値)を使いこなして前の配列の値との差を計算する
def calculate_time(keyboard, word)
    word_indexs = []
    separated_words = word.split("",0)
    separated_words.each {|word|
        word_indexs.push(keyboard.index(word))
    }
    result = 0
    word_indexs.each_with_index do |x,i|
        if i == 0 then
            result = result + x.abs
        else
            result = result + (x - word_indexs[i-1]).abs
        end
    end
    result
end
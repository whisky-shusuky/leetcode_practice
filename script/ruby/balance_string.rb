# https://leetcode.com/problems/split-a-string-in-balanced-strings/submissions/
# @param {String} s
# @return {Integer}
# 'LR','LLRR'とLとRが同数のなるようにする。
# 文字を勘定する
def balanced_string_split(s)
    stack = []
    count = 0
    s.chars.each do |c|
        if stack.empty?
            stack.push(c)
            next
        end
        
        if c == 'R' && stack.last == 'L'
            stack.pop
        elsif c == 'L' && stack.last == 'R'
            stack.pop
        else
            stack.push(c)
        end
        
        if stack.empty?
            count += 1
        end        
    end
    
    return count
end

# 簡単な方法
# 数だけ確認すればよい
def balanced_string_split(s)
    total = 0
    count = 0
    s.split("").each do |tmp|
        tmp == "L" ? count += 1 : count -= 1
        total += 1 if count == 0
    end
    total
end


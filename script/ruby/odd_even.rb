# @param {Integer} num
# @return {Integer}
# num が偶数なら2で割って、奇数なら1を引く。
# その操作を行った回数を返す
def number_of_steps (num)
    steps = 0
    if num == 0
       return steps
    end
    
    while num > 0 do
        if num % 2 == 0 then
            num = num / 2
        else
            num = num -1
        end
        steps = steps + 1
    end
    steps
end
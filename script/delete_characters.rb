# @param {String} s
# @return {String}
# 文章中の"a,e,i,o,u"を取り除く
def remove_vowels(s)
    s.delete("aeiou")
end

# これも同じ
def remove_vowels(s)
    s.delete("aeiou")
    s.gsub(/[aeiou]/,'')
end
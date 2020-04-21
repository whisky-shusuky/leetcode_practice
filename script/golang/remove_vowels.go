func removeVowels(S string) string {
    // runeは文字を個別に扱う際に使う
    // https://text.baldanders.info/golang/string-and-rune/
    vowelCharacters := map[rune]bool{
        'a': true,
        'e': true,
        'i': true,
        'o': true,
        'u': true,
    }
    rs := make([]rune, 0, len(S))
    // map の中身を見るとruneの値が入っている
    // map[97:true 101:true 105:true 111:true 117:true] 
    //fmt.Printf("%v " ,vowelCharacters)

    for _, r := range S {
        //runeの値r を使って vowelCharacters[r]が存在すればokがtrueになるようにする。 
        if _, ok := vowelCharacters[r]; !ok {
            rs = append(rs, r)
        }
    }
    //  Unicodeで出力
    //fmt.Printf("%#U " ,rs)
    return string(rs)
}
function! DeleteFunctionUnderCursor()
    let line = getline('.')

    normal diwxml

    let i = 1
    let c = 1
    while i <= strlen(line)
        let char = getline('.')[col('.') - 1]
        if (char == '(')
            let c += 1
        elseif (char == ')')
            let c -= 1
        endif

        if (c == 0)
            normal x`l
            break
        endif

        normal l
        let i += 1
    endwhile
endfunc

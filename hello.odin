package main

import "core:fmt"

main :: proc() {

    s := "Hello, World!"
    defer fmt.println("\nGoodbye, World!")
    x := 5
    constant :: 3.14
    // constant = 2.718
    fmt.println(s,x,constant)

    for i := 0; i < 10; i += 1 {
        fmt.println(i)
    }
    
    i := 0
    for i < 10 {
        i += 1
    }

    for i in 0..=5 {
        fmt.println(i)
    }

    #reverse for character in s {
        fmt.print(character)
    }

    when ODIN_ARCH == .i386 {
        fmt.println("32 bit")
    } else when ODIN_ARCH == .amd64 {
        fmt.println("64 bit")
    } else {
        fmt.println("Unsupported architecture")
    }

}
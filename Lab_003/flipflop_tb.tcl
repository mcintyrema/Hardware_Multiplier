restart

add_force D -radix hex ABCDEFABCDEFFFFF
add_force clk {0 0ns} {1 5ns} -repeat_every 10ns


add_force rst 1
run 10 ns
if {[get_value -radix unsigned Q] == [expr {0x00000000}]} {
    puts "CRR"
} else {
    puts "ERR"
}

add_force rst 0
add_force en 1
run 10 ns

if {[get_value -radix unsigned Q] == [expr {0xABCDEFABCDEFFFFF}]} {
    puts "CRR"
} else {
    puts "ERR"
}



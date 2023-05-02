restart

add_force D -radix hex AAAAAAAAAA
add_force clk {0 0ns} {1 5ns} -repeat_every 10ns

#testing load
add_force rst 0
run 10 ns
add_force Shift 0
run 10 ns
add_force Load 1
run 10 ns
if {[get_value -radix unsigned Q] == [expr {0xAAAAAAAAAA}]} {
    puts "CRR"
} else {
    puts "ERR"
}


# testing shift
add_force rst 0
add_force Load 0
run 10 ns
add_force Shift 1
run 10 ns
if {[get_value -radix unsigned Q] == [expr {0x15555555554}]} {
    puts "CRR"
} else {
    puts "ERR"
}

#testing reset
add_force Load 0
run 10 ns
add_force Shift 0
run 10 ns
add_force rst 1
run 10 ns
if {[get_value -radix unsigned Q] == [expr {0x0000000000}]} {
    puts "CRR"
} else {
    puts "ERR"
}















restart

add_force A -radix hex ABCDEFAB
add_force B -radix hex BAFEDCBA

add_force clk {0 0ns} {1 5ns} -repeat_every 10ns

add_force rst 1
run 10 ns

add_force rst 0
run 10 ns

if {[get_value -radix unsigned R] == [expr {0xABCDEFAB * 0xBAFEDCBA}]} {
    puts "CRR"
} else {
    puts "ERR"
}

add_force rst 1
run 10 ns

add_force rst 0
run 10 ns

add_force A -radix hex 11111111
add_force B -radix hex 00000000

if {[get_value -radix unsigned R] == [expr {0xAAAAAAAA * 0xAAAAAAAA}]} {
    puts "CRR"
} else {
    puts "ERR"
}


add_force rst 1
run 10 ns

add_force rst 0
run 10 ns

add_force A -radix hex 00000000
add_force B -radix hex 11111111

if {[get_value -radix unsigned R] == [expr {0x00000000 * 0x11111111}]} {
    puts "CRR"
} else {
    puts "ERR"
}



add_force rst 1
run 10 ns

add_force rst 0
run 10 ns

add_force A -radix hex BBBBBBBB
add_force B -radix hex CCCCCCCC

if {[get_value -radix unsigned R] == [expr {0xBBBBBBBB * 0xCCCCCCCC}]} {
    puts "CRR"
} else {
    puts "ERR"
}




add_force rst 1
run 10 ns

add_force rst 0
run 10 ns

add_force A -radix hex 12345678
add_force B -radix hex 87654321

if {[get_value -radix unsigned R] == [expr {0x12345678 * 0x87654321}]} {
    puts "CRR"
} else {
    puts "ERR"
}






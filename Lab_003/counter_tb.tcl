restart

add_force clk {0 0ns} {1 5000ps} -repeat_every 10000ps


add_force rst 1
run 10 ns
add_force en 0
run 10 ns
if {[get_value -radix unsigned Count] == [expr {0x00000000}]} {
    puts "CRR"
} else {
    puts "ERR"
}

add_force rst 0
run 10 ns
add_force en 1
run 10 ns
if {[get_value -radix unsigned Count] == [expr {0x00000001}]} {
    puts "CRR"
} else {
    puts "ERR"
}

add_force en 1
run 10 ns
if {[get_value -radix unsigned Count] == [expr {0x00000002}]} {
    puts "CRR"
} else {
    puts "ERR"
}

add_force en 1
run 10 ns
if {[get_value -radix unsigned Count] == [expr {0x00000003}]} {
    puts "CRR"
} else {
    puts "ERR"
}

add_force en 1
run 10 ns
if {[get_value -radix unsigned Count] == [expr {0x00000004}]} {
    puts "CRR"
} else {
    puts "ERR"
}


add_force en 1
run 10 ns
if {[get_value -radix unsigned Count] == [expr {0x00000005}]} {
    puts "CRR"
} else {
    puts "ERR"
}




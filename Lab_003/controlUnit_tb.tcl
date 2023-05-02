restart

#set inputs
add_force data_in -radix dec 1
add_force clk {0 0ns} {1 5ns} -repeat_every 10ns

#testing section 1
add_force rst 1
run 10 ns
if {[get_value -radix unsigned pr_state] == {s0}} {
    puts "Correct"
} else {
    puts "Incorrect"
}

if {[get_value -radix unsigned nx_state] == {s1}} {
    puts "Correct"
} else {
    puts "Incorrect"
}

#testing next state function
add_force rst 0
add_force counter 11100
run 10 ns
if {[get_value -radix unsigned pr_state] == {s1}} {
    puts "Correct"
} else {
    puts "Incorrect"
}

if {[get_value -radix unsigned nx_state] == {s1}} {
    puts "Correct"
} else {
    puts "Incorrect"
}

add_force counter 11111
run 10 ns


if {[get_value -radix unsigned pr_state] == {s2}} {
    puts "Correct"
} else {
    puts "Incorrect"
}

if {[get_value -radix unsigned nx_state] == {s2}} {
    puts "Correct"
} else {
    puts "Incorrect"
}





########testing Output function###########
add_force rst 1
add_force counter 00000
run 10 ns

if {[get_value -radix unsigned pr_state] == {s0}} {
    puts "CR"
}   else {
    puts "ERR"
}

if {[get_value -radix unsigned ff_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift64_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift32_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}

 # load A and B
if {[get_value -radix unsigned alu_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned count_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned done] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}

add_force rst 0
run 10 ns

if {[get_value -radix unsigned pr_state] == {s1}} {
    puts "CR"
}   else {
    puts "ERR"
}

if {[get_value -radix unsigned ff_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift64_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift32_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}

 # load A and B
if {[get_value -radix unsigned alu_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned count_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned done] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}

# still in state 1 but data_in = 0   and counter not at max
 add_force data_in -radix dec 0
 run 10 ns

 if {[get_value -radix unsigned pr_state] == {s1}} {
    puts "CR"
}   else {
    puts "ERR"
}

if {[get_value -radix unsigned ff_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift64_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift32_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}

 # load A and B
if {[get_value -radix unsigned alu_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned count_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned done] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}

 if {[get_value -radix unsigned nx_state] == {s1}} {
    puts "CR"
}   else {
    puts "ERR"
}
 ##################################
add_force counter 11111
add_force data_in 1
run 10 ns

 if {[get_value -radix unsigned pr_state] == {s2}} {
    puts "CR"
}   else {
    puts "ERR"
}

  if {[get_value -radix unsigned nx_state] == {s2}} {
    puts "CR"
}   else {
    puts "ERR"
}

if {[get_value -radix unsigned ff_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift64_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift32_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned alu_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned count_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned done] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


add_force data_in 0
add_force counter 11111
run 10 ns
 if {[get_value -radix unsigned pr_state] == {s2}} {
    puts "CR"
}   else {
    puts "ERR"
}

  if {[get_value -radix unsigned nx_state] == {s2}} {
    puts "CR"
}   else {
    puts "ERR"
}

if {[get_value -radix unsigned ff_en] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift64_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned shift32_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}

if {[get_value -radix unsigned alu_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned count_en] == [expr {0}]} {
   puts "CR"
}  else {
   puts "ERR"
}


if {[get_value -radix unsigned done] == [expr {1}]} {
   puts "CR"
}  else {
   puts "ERR"
}


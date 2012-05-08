#!/usr/bin/env ruby
#
require 'meminator'
Meminator.username = 'richo' # USERNAME GOES HERE
Meminator.password = 'password' # PASSWORD GOES HERE

memer = Meminator::Meminator.new

puts memer.get_url("I_WOLF", "Patient stubbed his toe", "Had to put him down")

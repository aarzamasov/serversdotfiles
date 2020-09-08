#!/usr/bin/expect -f
spawn ssh aarzamasov@host
expect "*ssword: "
send "Pass\r"
expect "$ "
send "ssh -o StrictHostKeyChecking=no aarzamasov@[lindex $argv 0] \r"
expect "*ssword: "
send "pass\r"
expect "$ "
send "sudo su -\r"
expect "aarzamasov:"
send "pass\r"
interact
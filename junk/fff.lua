#!/usr/bin/env lua
--[[ Test script written in lua.
     Comments are weird. --]]

-- Get some envars.
user = os.getenv("USER")
host = os.getenv("HOSTNAME", "null")

print(user .. "@" .. host)

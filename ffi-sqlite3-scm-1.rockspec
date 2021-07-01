package = "ffi-sqlite3"
version = "scm-1"
source = {
	url = "git+https://github.com/lalawue/ffi-sqlite3.git"
}
description = {
	summary = "SQLite3 interface for LuaJIT",
	detailed = "SQLite3 interface for LuaJIT",
	homepage = "https://github.com/lalawue/ffi-sqlite3.git",
	maintainer = "lalawue <suchaaa@gmail.com>",
	license = "public domain"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		["ffi-sqlite3"] = "ffi-sqlite3.lua"
	}
} 

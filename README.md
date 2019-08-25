
# Usage

add by lalawue

```lua
local sqlite3 = require("lsqlite3")

local conn = sqlite3.open('my_database.sqlite3')
if not conn then
   os.exit(0)
end

conn:exec("CREATE TABLE IF NOT EXISTS my_table(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER)")
conn:exec("INSERT INTO my_table (name,age) VALUES('adam',50);")

local stmt = conn:prepare("SELECT * FROM my_table WHERE age=50;")
while stmt:step() do
   print(stmt[1], stmt[2])
end
stmt:finalize()

conn:close()
```

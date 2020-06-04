require 'pry'
require 'sqlite3'

db = SQLite3::Database.new("chinook.db") #path of your database

name = "Vidhi B S"
id = 4


db.execute('UPDATE fans SET name = ? WHERE id = ?',name, id )
db.execute('UPDATE fans SET name = "Vidhi S" WHERE id = 4')


binding.pry
0
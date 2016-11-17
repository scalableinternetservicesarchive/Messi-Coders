require 'sqlite3'

begin
    db = SQLite3::Database.open "test.sqlite3"
    db.execute "select * from games"
    
rescue SQLite3::Exception => e 
    
    puts "Exception occurred"
    puts e
    
ensure
    db.close if db
end

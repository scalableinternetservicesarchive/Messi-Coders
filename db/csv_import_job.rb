require 'csv'
require 'finishing_moves'
require 'sqlite3'

def import(csvfile)
    commands = []

    game = CSV.read(csvfile, headers:false)

    filename = csvfile[/\/(.+?)(\.[^.]*$|$)/, 1]

    createstr = "CREATE TABLE IF NOT EXISTS [" + filename + "](Id INTEGER PRIMARY KEY"    
    strings_idx = []
    for idx in 0..game[0].size-1
        header = game[0][idx]
        value = game[1][idx]

        type = ""
        if value.numeric?
            type = " REAL"
        else
            type = " TEXT"
            strings_idx << idx
        end
        header = "'" + header + "'"
        createstr << ", " + header + type
    end
    createstr += ")"
    
    commands << createstr
    # Run createstr

    game[1..game.size].each do |row|
        rowstr = "INSERT INTO [" + filename + "] values(NULL,"

        row.each { |item| 
            puts item
            item.insert(0, "\"") << "\"" 
        }

        rowstr += row.join(",")
        rowstr += ")"

        #Run rowstr
        commands << rowstr
    end
    
    return commands
end



begin
    db = SQLite3::Database.open "development.sqlite3"

    #csv_list = Dir.glob("csv/*")
    csv_list = ["csv/PlayerData.csv"]

    #Create table of csv
    tablecreation = "CREATE TABLE IF NOT EXISTS CSV(Id INTEGER PRIMARY KEY, 
        CSV_filename TEXT)"
    db.execute tablecreation

    #Create a table for each csv
    csv_list.each do |csv_filename|
        filename_no_ext = csv_filename[/\/(.+?)(\.[^.]*$|$)/, 1]

        #Add the csv to the csv_table
        add_csv_cmd = "INSERT INTO CSV values(NULL, '" + filename_no_ext + "')"
        db.execute add_csv_cmd

        #Execute commands 
        commands = import(csv_filename)

        commands.each do |command|
            puts command
            db.execute command
        end
        puts csv_list
    end
    
rescue SQLite3::Exception => e 
    
    puts "Exception occurred"
    puts e
    
ensure
    db.close if db
end


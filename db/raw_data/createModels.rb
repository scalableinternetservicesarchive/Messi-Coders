require 'csv'
require 'finishing_moves'

def import(csvfile)
    game = CSV.read(csvfile, headers:false)

    filename = csvfile[/\/(.+?)(\.[^.]*$|$)/, 1]
    filename = 'd_' + filename
    createstr = "bin/rails generate model " + filename
    strings_idx = []
    for idx in 0..game[0].size-1
        header = (game[0][idx]).tr(".", "_")
        value = game[1][idx]
        type = ""
        if value.numeric?
            type = "float"
        else
            type = "string"
            strings_idx << idx
        end
        createstr << " " + header + ":" + type
    end
    return createstr
end

# begin
    csv_list = Dir.glob("csv/*")
    csv_list.each do |csv_filename|
        # filename_no_ext = csv_filename[/\/(.+?)(\.[^.]*$|$)/, 1]
        commands = import(csv_filename)
        puts commands
    end
# end

require 'csv'
require 'thread'


def findPlayerInFiles(player)
    $files = Array.new
    $csv_list = Dir.glob("csv/*")
    threads = (1..3).map do |i|
      Thread.new(i) do |i|
        if i == 1
            $files.push(*getFiles(player, $csv_list[0..30]))
        elsif i == 2
            $files.push(*getFiles(player, $csv_list[31..60]))
        else
            $files.push(*getFiles(player, $csv_list[61..93]))
        end
      end
    end
    threads.each {|t| t.join}
    return $files
end

# @method getFiles - Returns csv files the player is found inside
# @param player - Name of player to search for
# @return Array{files} - List of csv files player is found inside
def getFiles(player, csv_list)
    # Gets List of CSV to seed database with
    files = Array.new
    # csv_list = Dir.glob("csv/*")
    csv_list.each do |csv_filename|
        csv_text = File.read(csv_filename)
        csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
        csv.each do |row|
            csv_player = row.to_hash['Player']
            if csv_player && csv_player.downcase == player.downcase
                files.push(csv_filename)
                break
            end
        end
    end
    return files
end

# @method getData - Returns row of data from desired csv for a player
# @param player
# @param csv_filename
# @return dictionary{Table Row Entry}
def getData(player, csv_filename)
    # Gets List of CSV to seed database with
    csv_text = File.read(csv_filename)
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|
        csv_player = row.to_hash['Player']
        if csv_player && csv_player.downcase == player.downcase
            return row.to_hash
        end
    end
end


# @method splitData - Splits up the long hash into smaller hashes of length 10
# @param data - The data(hash of Table Row Entry) to split up
# @param len - The length the hashes should be split up into
# @return Array{Hash}
def splitData(data, len)
    count = 0;
    splitData = Array.new
    hash = Hash.new
    data.each do |key, array|
        if (count == len)
            splitData.push(hash)
            hash = Hash.new
            count = 1
        end
        hash[key] = array
        count += 1
    end
    return splitData
end



# @method filterData - Returns hash of all columns that are related to the stat
# @param stat - The statistic to look for in this data
# @param data - The data(hash of Table Row Entry) to filter
# @return Hash{Filterd Table Row Entry}
def filterData(stat, data)
    query = Hash.new
    data.each do |key, array|
        if key.downcase.include? stat.downcase
            query[key] = array
        end
    end
    return query
end

## Get all stats for a player
# files = getFiles('Colaprico')
# files.each do |file|
#      puts getData('Colaprico', file)
#  end

## Filter data by Stat
# files = getFiles('Colaprico')
# data = getData('Colaprico', files.first)
# filtered_data = filterData('Shots', data)
# puts filtered_data

## Splits up Data in segements of 10 stats
# file = getFiles('Colaprico').first
# data = getData('Colaprico', file)
# organizedData = splitData(data, 10)
# puts organizedData
r1 = findPlayerInFiles('FARQUHARSON')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')
# findPlayerInFiles('Colaprico')

def getFiles(player)
    # Gets List of CSV to seed database with
    files = Array.new
    csv_list = Dir.glob("csv/*")
    csv_list.each do |csv_filename|
        csv_text = File.read(csv_filename)
        csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
        csv.each do |row|
            csv_player = row.to_hash['Player']
            if csv_player && csv_player.downcase == player.downcase
                files.push(csv_filename)
                break
            end
        end
    end
    # puts files
end

r2 = getFiles('FARQUHARSON')
# getFiles('Colaprico')
# getFiles('Colaprico')
# getFiles('Colaprico')
# getFiles('Colaprico')
# getFiles('Colaprico')
# getFiles('Colaprico')
# getFiles('Colaprico')
# getFiles('Colaprico')
# getFiles('Colaprico')

puts r1
puts '============='
puts r2

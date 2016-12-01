class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  require 'csv'

    # @method getFiles - Returns csv files the player is found inside
    # @param player - Name of player to search for
    # @return Array{files} - List of csv files player is found inside
    def getFiles(player)
        files = Array.new
        csv_list = Dir.glob("app/assets/csv/*")
        csv_list.each do |csv_filename|
            csv_text = File.read(csv_filename)
            file = File.basename(csv_filename, ".csv")
            csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
            csv.each do |row|
                csv_player = row.to_hash['Player']
                if csv_player && csv_player.downcase == player.downcase
                    # files.push(file.upcase)
                    files.push(csv_filename)
                end
            end
        end
        return files
    end
    helper_method :getFiles

    # @method getData - Returns row of data from desired csv for a player
    # @param player
    # @param csv_filename
    # @return dictionary{Table Row Entry}
    def getData(player, csv_filename)
        csv_text = File.read(csv_filename)
        csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
        csv.each do |row|
            csv_player = row.to_hash['Player']
            if csv_player && csv_player.downcase == player.downcase
                return row.to_hash
            end
        end
    end
    helper_method :getData

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
    helper_method :splitData



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
    helper_method :filterData
end

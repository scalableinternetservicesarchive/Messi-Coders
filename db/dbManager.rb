# Get all matches in tournament:
def getTournamentMatches(tournament)
    matches = $db.execute("SELECT CSV.CSV_filename FROM CSV WHERE CSV.CSV_filename LIKE ?", "%#{tournament}%")
    puts matches
end

# Get an individual match (return entire table)
def getMatch(tournament, week, team1, team2)
    data = getTournamentMatches(tournament)
    match = $db.execute("SELECT * FROM #{data.first}")
    puts match
end

# Get player totals for that team,tournament
def getTeam(tournament, team)

end

# Get Team Total (Sum getTeam())
def getTeamTotal(tournament, team)
end

# Get Team Average (Get Team Total/Team Size)
def getTeamAverage(data)
end

# Tournament Leaderboard:
def getLeaders(tournament, stat)
end

# Get Total Stats over single tournament
def getPlayer(tournament, player)
    # Get the name of the tournament*all table if it exists
    match = $db.execute("SELECT CSV.CSV_filename FROM CSV WHERE CSV.CSV_filename LIKE ?", "%#{tournament}%all")
    if ( !(match.empty?) )
        # puts $db.execute("SELECT * FROM #{match} WHERE 2015-nwsl-all.Player LIKE ?", "%#{player}%")
        puts "HERE"
        res = $db.execute("SELECT * FROM 2015-nwsl-all WHERE Player LIKE '%Anonma%'")
    end
    puts match
end

# Get Career Stats
def getPlayerTotal(player)

end

# Given a category and data, return the
# corresponding columns of data
def getStatCategory(data, category)

end

#############################################################
require 'sqlite3'
$db
begin
    $db = SQLite3::Database.open "test.sqlite3"
rescue SQLite3::Exception => error
    puts "Exception occurred: "
    puts error
end

getPlayer("2015-nwsl","Erika")

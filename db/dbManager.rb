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

# Given a player & season, return season average
def getSeasonAverage(player, season)
  puts "Single Player: Season Average"
  table = season+'-nwsl-all'
  query = db.execute( "select * from ? where player=?" )
  query.bind_param 1, table
  query.bind_param 2, player
  data = query.execute
  return data
end

# Given a player, season and 2 teams, return game average
def getGameAverage(player, season, team1, team2)
  puts "Single Player: Game Average"
  if season == '2015'
    puts "Individual Data Doesn't Exist for 2015 Season"
    return "Missing Data"
  end
  table = 'nwsl-2016-' + team1 + '-' + team2
  query = db.execute( "select * from ? where player = ?" )
  query.bind_param 1, table
  query.bind_param 2, player
  data = query.execute
  return data
end

# Given a season & 2 teams, return the game data
def getGame(season, team1, team2)
  puts "Single Game Data"
  if season == '2015'
    puts "Individual Data Doesn't Exist for 2015 Season"
    return "Missing Data"
  end
  table = 'nwsl-2016-' + team1 + '-' + team2
  query = db.execute( "select * from ?" )
  query.bind_param 1, table
  query.bind_param 2, player
  data = query.execute
  return data

end

# Given a team & season, return season averages
def getTeamAverages(season, team)
  puts "Season Averages for team"
end

# Given a season & 2 teams, return the game averages for each
def getGameBreakdown(season, team1, team2)
  puts "Team Game Averages for a match"
end

# Given a player, return career totals/averages.
def getPlayerCareer(season, player)
  puts "Career Player Average"
end

# Given a team & season, return all players & stats for that team
def getTeam(season, team)
  puts "Season Team Info"
end

# Given a season & stat, return a leaderboard of n players
def getTopPlayersByStat(season, n, stat)
  puts "Stat Leaderboard"
end

# Given a season, stat, n, and 2 teams return top n playersn
def getOpponents(season, team, stats)
  puts "Opponent Stats"
end

#############################################################
# Get all matches in tournament:
def getTournamentMatches(tournament)
end

# Get an individual match (return entire table)
def getMatch(tournament, week, team1, team2)
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
end

# Get Career Stats
def getPlayerTotal(player)
end

# Given a category and data, return the
# corresponding columns of data
def getStatCategory(data, category)
end

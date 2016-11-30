# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Club.create(name: 'Boston Breakers')
Club.create(name: 'Chicago Red Stars')
Club.create(name: 'Houston Dash')
Club.create(name: 'FC Kansas City')
Club.create(name: 'Orlando Pride')
Club.create(name: 'Portland Thorns FC')
Club.create(name: 'Seattle Reign')
Club.create(name: 'Sky Blue FC')
Club.create(name: 'Washington Spirit')
Club.create(name: 'Western New York Flash')

csv_text = File.read(Rails.root.join('lib', 'seeds', 'PlayerData.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  p = Player.new
  p.pid = row['PID']
  p.firstname = row['FirstName']
  p.lastname = row['LastName']
  p.clubname = row['CLUB']
  p.number = row['NUM']
  p.dob = row['DOB']
  p.position = row['POS']
  p.hometown = row['HomeTown']
  p.homestate = row['HomeState']
  p.height = row['Height']
  p.school = row['State']
  p.twitter = row['Twitter']
  case row['CLUB']
  when "Boston Breakers"
    p.club_id = 1
  when "Chicago Red Stars"
    p.club_id = 2
  when "Houston Dash"
    p.club_id = 3
  when "FC Kansas City"
    p.club_id = 4
  when "Orlando Pride"
    p.club_id = 5
  when "Portland Thorns FC"
    p.club_id = 6
  when "Seattle Reign FC"
    p.club_id = 7
  when "New Jersey Sky Blue Fc"
    p.club_id = 8
  when "Washington Spirit"
    p.club_id = 9
  when "Western New York Flash" 
    p.club_id = 10
  end

  p.save
end

Tournament.create(name: '2016 CONCACAF Olympic Qualifiers')
Tournament.create(name: '2016 NWSL')
Tournament.create(name: '2016 Olympics')
Tournament.create(name: '2016 She Believes Cup')
Tournament.create(name: '2016 International Friendlies')

csv_text = File.read(Rails.root.join('lib', 'seeds', 'MatchData.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  m = Match.new
  m.tournamentname = row['Tournament Name']
  m.team1 = row['Team 1']
  m.team2 = row['Team 2']
  m.date = row['Date']
  m.score = row['Score']
  m.city = row['City']
  m.state = row['State/Country']
  m.gameid = row['Game Id']
  case row['Tournament Name']
  when "2016 CONCACAF Olympic Qualifers"
    m.tournament_id = 1
  when "2016 NWSL"
    m.tournament_id = 2
  when "2016 Olympics"
    m.tournament_id = 3
  when "2016 She Believes Cup"
    m.tournament_id = 4
  when "2016 International Friendlies"
    m.tournament_id = 5
  end

  m.save
end
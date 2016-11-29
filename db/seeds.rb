# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# Club.create(name: 'Boston Breakers')
# Club.create(name: 'Chicago Red Stars')
# Club.create(name: 'Houston Dash')
# Club.create(name: 'FC Kansas City')
# Club.create(name: 'Orlando Pride')
# Club.create(name: 'Portland Thorns FC')
# Club.create(name: 'Seattle Reign FC')
# Club.create(name: 'Sky Blue FC')
# Club.create(name: 'Washington Spirit')
# Club.create(name: 'Western New York Flash')



# Gets List of CSV to seed database with
# csv_list = Dir.glob("csv/*")
# csv_list.each do |csv_filename|
#     filename = csv_filename[/\/(.+?)(\.[^.]*$|$)/, 1]
#     tableName = ('d_' << filename.tr("-", "_").downcase)
#     puts tableName
#     csv_text = File.read(csv_filename)
#     csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
#     csv.each do |row|
#     #   puts row.to_hash
#         puts key
#     end
# end

csv_filename = 'csv/Match-Data.csv'
filename = 'Match-Data'
tableName = ('d_' << filename.tr("-", "_").downcase)
puts tableName
csv_text = File.read(csv_filename)
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
end

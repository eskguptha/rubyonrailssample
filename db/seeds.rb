# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Rails.env.development? || Rails.env.test?
  abort ("The script is running in non development environment. Refusing to seed")
end

computers_list = (1..17).map do |c| {hostname: 'cslin'+(c>9? c.to_s : "0"+c.to_s), status: false} end
computers = Computer.create(computers_list)
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
PotatoPrice.destroy_all

PotatoPrice.create(time: DateTime.new(2024, 1, 22, 9, 0, 0), value: 100.25)
PotatoPrice.create(time: DateTime.new(2024, 1, 22, 9, 1, 0), value: 100.26)
PotatoPrice.create(time: DateTime.new(2024, 1, 22, 9, 2, 0), value: 100.27)


PotatoPrice.create(time: DateTime.new(2024, 1, 23, 9, 0, 0), value: 100.55)
PotatoPrice.create(time: DateTime.new(2024, 1, 23, 10, 1, 0), value: 100.26)
PotatoPrice.create(time: DateTime.new(2024, 1, 23, 11, 2, 0), value: 100.27)


PotatoPrice.create(time: DateTime.new(2024, 1, 24, 9, 0, 0), value: 100.25)
PotatoPrice.create(time: DateTime.new(2024, 1, 24, 10, 1, 0), value: 100.55)
PotatoPrice.create(time: DateTime.new(2024, 1, 24, 11, 2, 0), value: 100.50)

PotatoPrice.create(time: DateTime.new(2024, 1, 25, 9, 0, 0), value: 100.55)
PotatoPrice.create(time: DateTime.new(2024, 1, 25, 10, 1, 0), value: 100.28)
PotatoPrice.create(time: DateTime.new(2024, 1, 25, 11, 2, 0), value: 100.27)
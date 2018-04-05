# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RACES = %w(Dragonborn Dwarf Elf Gnome Half-Elf Half-Orc Halfling Human Tiefling)
CHAR_CLASSES = %w(Barbarian Bard Cleric Druid Fighter Monk Paladin Ranger Rogue Sorcerer Warlock Wizard)

RACES.each do |race|
  Race.create!(title: race)
end

CHAR_CLASSES.each do |clas|
  CharacterClass.create!(title: clas)
end

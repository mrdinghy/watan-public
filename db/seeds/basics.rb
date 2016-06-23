# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email




programs = Watanprogram.create([
                                   {name: 'Education'},
                                   {name: 'Economic Empowerment'},
                                   {name: 'Health Clinics'},
                                   {name: 'Orphans Program'},
                                   {name: 'Infrastructure'},
                                   {name: 'Food Relief'},
                                   {name: 'Civil Society'}

                               ])





trans = Transition.create([
        {name: 'boxslide'},
        {name: 'boxfade'},
        {name: 'slotzoom-horizontal'},
        {name: 'slotslide-horizontal'},
        {name: 'slotfade-horizontal'},
        {name: 'slotzoom-vertical'},
        {name: 'slotslide-vertical'},
        {name: 'slotfade-vertical'},
        {name: 'slideleft'},
        {name: 'slideright'},
        {name: 'slideup'},
        {name: 'slidedown'},
        {name: 'fade'}

                               ])








(10..500).step(10) do |n|
  px=Pixel.create(pixels: n)
end


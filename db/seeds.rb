puts "🌱 Seeding..."

Farm.create([
    {
        name: "Infinite Tree",
        city: "Grants Pass",
        state: "Oregon"
    },
    {
        name: "Agua Dulce",
        city: "Austin",
        state: "Texas"
    },
    {
        name: "Tailwater Farms",
        city: "Portland",
        state: "Oregon"
    },
    {
        name: "Shady Acres",
        city: "Valdosta",
        state: "Georgia"
    }
])
    
50.times do
    planting = Faker::Date.between(from: '2023-05-01', to: '2023-05-24')
    harvest = Faker::Date.between(from: '2023-06-18', to: '2023-07-15')
    days = harvest - planting
    Bed.create(
        sq_ft:  rand(3..60)*10.ceil,
        crop: Faker::Food.vegetables,
        planting_date: planting,
        harvest_date: harvest,
        dtm: days,
        farm_id: rand(1..4)
    )
end

puts "✅ Done seeding!"

puts "🌱 Seeding..."

Farm.create([
    {
        name: "Infinite Tree",
        city: "Grants Pass, OR",
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
        city: "Vernonia",
        state: "Oregon"
    }
])
    
30.times do
    Bed.create(
        sq_ft:  rand(30..600),
        in_use: true,
        crop: Faker::Food.vegetables,
        planting_date: Faker::Date.between(from: '2023-03-01', to: '2023-04-02'),
        harvest_date: Faker::Date.between(from: '2023-05-02', to: '2023-06-03'),
        dtm: nil,
        farm_id: rand(1..4)
    )
end

puts "✅ Done seeding!"

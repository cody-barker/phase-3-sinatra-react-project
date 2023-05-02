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
    
50.times do
    Bed.create(
        sq_ft:  rand(3..60)*10.ceil,
        crop: Faker::Food.vegetables,
        planting_date: Faker::Date.between(from: '2023-03-01', to: '2023-04-02'),
        harvest_date: Faker::Date.between(from: '2023-05-10', to: '2023-06-03'),
        in_use: true,
        farm_id: rand(1..4)
    )
end

puts "✅ Done seeding!"

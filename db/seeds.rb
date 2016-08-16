
200.times do
  Address.create(
    :line_1 => Faker::Address.street_address,
    :line_2 => Faker::Address.secondary_address,
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :zip => Faker::Address.zip_code, 
    :employee_id => rand(1..100)
    )
end
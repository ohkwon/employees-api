json.id employee.id
json.first_name employee.first_name
json.last_name employee.last_name
json.birthdate employee.birthdate
json.email employee.email
json.ssn employee.ssn
json.addresses employee.addresses do |address|
  json.line_1 address.line_1
  json.line_2 address.line_2
  json.city address.city
  json.state address.state
  json.zip address.zip
end
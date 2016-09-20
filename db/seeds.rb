# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.create!(
  name: "cruz verde"
)
Company.create!(
  name: "ahumada"
)
Office.create!(
  name: "altejo sur",
  company_id: 1
)
Office.create!(
  name: "miramonte norte",
  company_id: 1
)
Office.create!(
  name: "lacuhuya poniente",
  company_id: 2
)
Office.create!(
  name: "longitudinal este",
  company_id: 2
)
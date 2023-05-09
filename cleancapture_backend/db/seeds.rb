# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  Project.create(project_title: "Project Title", project_description: "Project Description", company_name: "Company Name", company_description: "Company Description", completion_date: "2021-05-09", sector: "Sector", service: "Service", website: "Website", instagram: "Instagram", linkedin: "Linkedin", tiktok: "Tiktok", facebook: "Facebook", twitter: "Twitter")
end

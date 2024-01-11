# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

student = Student.create(
    first_name: 'Uwais',
    last_name: 'Musheer',
    email: 'uwais@gmail.com'
)

10.times do |i|
    puts "Creating student #{i+1}"
    Student.create(
        first_name: "Fname#{i+1}",
        last_name: "Lname#{i+1}",
        email: "student#{i+1}@gmail.com"
    )
end
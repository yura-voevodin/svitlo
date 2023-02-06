# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

lines = [
    { id: 1, name: "Підчерга 1.1" },
    { id: 2, name: "Підчерга 1.2" },
    { id: 3, name: "Підчерга 1.3" },
    { id: 4, name: "Підчерга 1.4" },
    { id: 5, name: "Підчерга 2.1" },
    { id: 6, name: "Підчерга 2.2" },
    { id: 7, name: "Підчерга 2.3" },
    { id: 8, name: "Підчерга 2.4" },
    { id: 9, name: "Підчерга 3.1" },
    { id: 10, name: "Підчерга 3.2" },
    { id: 11, name: "Підчерга 3.3" },
    { id: 12, name: "Підчерга 3.4" },
    { id: 13, name: "Підчерга 4.1" },
    { id: 14, name: "Підчерга 4.2" },
    { id: 15, name: "Підчерга 4.3" }
]

lines.each do |line_data|
    line = Line.find_by(id: line_data[:id])
    if line.nil?
        line = Line.new
        line.id = line_data[:id]
        line.name = line_data[:name]
        line.save
    end
end

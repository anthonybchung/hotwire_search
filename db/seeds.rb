# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

projects = [
  {
    name: "Robot and the table",
    description: "Don't let the robot fall off the table",
    category: "ruby"
  },
  {
    name: "Fuel logger",
    description: "Track how much you spend on fuel",
    category: "ruby"
  },
  {
    name: "Shop till you drop",
    description: "Web app for an online shop",
    category: "ruby on rails"
  },
  {
    name: "Wind Tunnel Automation",
    description: "Automate the wind tunnel to improve the efficiency of lab experiments",
    category: "C/C++"
  },
  {
    name: "Natural Frequency of a building",
    description: "Work out the natural frequency of a sky scrapper",
    category: "Fortran-77"
  },
  {
    name: "Little Robot on the table",
    description: "Build a robot and automate it with C/C++",
    category: "C/C++"
  },
  {
    name: "Laminar Flow",
    description: "Computational Fluid Dynamics over a 2-D plate",
    category: "Fortran-77"
  },
  {
    name: "How far can you throw",
    description: "See the optimal angle relative to the natural environment",
    category: "Fortran-77"
  }
]

Project.create(projects)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Book.count > 0
  [
    {title: 'Practical Object-Oriented Design in Ruby', author: 'Sandi Metz', img: 'poodr.jpg', completed: false, price: 29.99},
    {title: 'Programming Ruby', author: 'Dave Thomas, Andy Hunt, and Chad Fowler', img: 'programming_ruby.jpg', completed: true, price: 30.00},
    {title: 'Eloquent Ruby', author: 'Russ Olsen', img: 'eloquent_ruby.jpg', completed: true, price: 22.86},
    {title: 'Ruby on Rails Tutorial', author: 'Michael Hartl', img: 'rails_tutorial.jpg', completed: true, price: 17.94},
    {title: 'Metaprogramming Ruby', author: 'Paolo Perrotta', img: 'metaprogramming_ruby.jpg', completed: true, price: 22.07},
    {title: 'Design Patterns in Ruby', author: 'Russ Olsen', img: 'design_patterns_ruby.jpg', completed: false, price: 39.68},
  ].each do |book_data|

    Book.create(book_data)
  end
end
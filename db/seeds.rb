# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


donors = Donor.create!([
 {
 name:  'Abby',
 email: 'abby@gmail.com',
 phone: '604-555-6789',
 },
 {
 name:  'Mindy',
 email: 'mindy@gmail.com',
 phone: '604-444-6789',
 },
 {
 name:  'Amy',
 email: 'amy@gmail.com',
 phone: '604-333-6789',
 }

])

agencies = Agency.create!([
  {
    name: 'Dress For Success'
  },
  {
    name: 'YWCA'
  },
  {
    name: 'WorkBC'
  }
])

clients = Client.create!([
  {
    name: 'John',
    email: 'john@gmail.com',
    phone: '604-235-6970',
    age: 30,
    gender: 'male',
    indigenous: false
  },
  {
    name: 'Jane',
    email: 'jane@gmail.com',
    phone: '604-233-6970',
    age: 29,
    gender: 'female',
    indigenous: false
  },
  {
    name: 'Kely',
    email: 'kely@gmail.com',
    phone: '604-235-6333',
    age: 25,
    gender: 'trans-gender',
    indigenous: true
  }
])

volunteers = Volunteer.create!([
  {
    firstname: 'Johnathon',
    lastname: 'Lee',
    email: 'jlee@gmail.com',
    phone: '778-987-1100'
  },
  {
    firstname: 'Coco',
    lastname: 'Peng',
    email: 'cpeng@gmail.com',
    phone: '604-222-1100'
  }
])

categories = Category.create!([
  {
    name: 'Office'
  },
  {
    name: 'Trade'
  }
])

subcategories = Subcategory.create!([
  {
    name: 'Boot'
  },
  {
    name: 'Shirt'
  },
  {
    name: 'Hat'
  }
])

products = Product.create!([
  {
    quantity: 2,
    category_id: 2,
    subcategory_id: 1,
    donor_id: 1,
    name: 'Steel Toe Boot',
    color: 'Black',
    size: '14',
    instock: true

  },
  {
    quantity: 1,
    category_id: 1,
    subcategory_id: 2,
    donor_id: 1,
    name: 'Long-Sleeve',
    color: 'Grey',
    size: 'Medium',
    instock: true

  },
  {
    quantity: 5,
    category_id: 2,
    subcategory_id: 3,
    donor_id: 2,
    name: 'Hard Hat',
    color: 'Yellow',
    size: 'Medium',
    instock: true

  }
])


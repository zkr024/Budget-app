user1 = User.create(first_name: 'Oscar', last_name: 'Bermudez')

food = Category.create(author_id: user1.id, name: 'Food', icon: '%')

food.purchases.create(author_id: user1.id, name: 'Sub-way', amount: '5')
user1 = User.create(first_name: 'Oscar', last_name: 'Bermudez')

cate1 = Category.create(author_id: user1.id, name: 'Food', icon: '%')

purch1 = Purchase.create(author_id: user1.id, name: 'Sandwich', amount: '5')
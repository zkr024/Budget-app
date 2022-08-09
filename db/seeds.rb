user = User.create(full_name: 'test test', email: 'test@test.com', password: 'password', password_confirmation: 'password')

food = Category.create(author_id: user.id, name: 'Food', icon: 'food.png')
cat = Category.create(author_id: user.id, name: 'Cat', icon: 'cat.png')

food.purchases.create(author_id: user.id, name: 'Sub-way', amount: '5')
food.purchases.create(author_id: user.id, name: 'Burguer King', amount: '4.5')

cat.purchases.create(author_id: user.id, name: 'Whiskas', amount: '15')
cat.purchases.create(author_id: user.id, name: 'Cat-Bed', amount: '25')
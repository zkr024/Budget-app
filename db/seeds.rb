user = User.create(full_name: 'test test', email: 'test@test.com', password: 'password', password_confirmation: 'password')

food = Category.create(author_id: user.id, name: 'Food', icon: '%')

food.purchases.create(author_id: user.id, name: 'Sub-way', amount: '5')
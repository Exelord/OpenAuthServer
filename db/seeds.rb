User.create(email: 'test@test.com', password: 'testtest').confirm
User.create(email: 'admin@admin.com', password: 'adminadmin', admin: true).confirm

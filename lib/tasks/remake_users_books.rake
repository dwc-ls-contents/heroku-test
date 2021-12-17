task :remake_users_books => :environment do
    User.delete_all
    users = User.create!(
    [
        {email: 'olivia@test.com', name: 'Olivia', introduction: 'Hello!!', password: 'password'},
        {email: 'james@test.com', name: 'James', introduction: 'Hello!!', password: 'password'},
        {email: 'lucas@test.com', name: 'Lucas', introduction: 'Hello!!', password: 'password'}
    ]
    )

    Book.delete_all
    Book.create!(
    [
        {title: 'リーダブルコード', body: 'より良いコードを書くためのシンプルで実践的なテクニック。', user_id: users[0].id },
        {title: 'トラブル知らずのシステム設計', body: 'システム設計の要点を図解で説明してくれます。', user_id: users[1].id },
        {title: 'たのしいRuby', body: 'Rubyの入門におすすめです。', user_id: users[2].id },
    ]
    )
end

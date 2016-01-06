User.create!([
  {email: "beth@email.com", encrypted_password: "$2a$10$Tdv7PyQ/ywUMxh84G0MpRuyiRL9llLcUA9nAxdZeoBF6uyYc.tXRG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 11, current_sign_in_at: "2016-01-06 15:21:40", last_sign_in_at: "2016-01-06 14:58:06", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "admin", name: "Bethany"},
  {email: "callum@email.com", encrypted_password: "$2a$10$aSgd.VOKHvUN.PJ.0Q5rXOhZ3Z2J/bUXV/GZIueLrdT7JptGZ25UC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-01-06 14:57:52", last_sign_in_at: "2016-01-06 12:09:35", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: nil, name: "Callum"},
  {email: "gary@email.com", encrypted_password: "$2a$10$LWU0aIK0SJ3tKkbm0JwMiuuMgkVZysHzspSdDgGuSp0wGdhJsonIS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2016-01-06 15:10:26", last_sign_in_at: "2016-01-06 14:57:41", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "author", name: "Gary"}
])
Article.create!([
  {title: "Learn to code", content: "## Rails magic is great.\r\nHere's some things about Rails.\r\n\r\n### I love code.\r\nSome more things:\r\n\r\n1. I like gems\r\n2. Devise is cool", image: "", user_id: 1},
  {title: "Gary's article", content: "text here!! you suck", image: "", user_id: 3},
  {title: "A new article by Gary", content: "Hi there", image: "", user_id: 3},
  {title: "Michael test", content: "xxx test", image: "", user_id: 3}
])
Comment.create!([
  {content: "gary likes this! very much", user_id: 3, article_id: 2},
  {content: "nice", user_id: 1, article_id: 7},
  {content: "comment here\r\n", user_id: 3, article_id: 9},
  {content: "another comment", user_id: 3, article_id: 2},
  {content: "Lovely article", user_id: 1, article_id: 2}
])

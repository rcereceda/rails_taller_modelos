# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all


post = Post.create([{ content: 'Post 01' }, { content: 'Post 02' }])

post1 = Post.where(content:'Post 01').take
post2 = Post.where(content:'Post 02').take

post1.comments.build(content: 'Comment 01').save
post1.comments.build(content: 'Comment 02').save
post2.comments.build(content: 'Comment 03').save
post2.comments.build(content: 'Comment 04').save
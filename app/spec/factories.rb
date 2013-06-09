Factory.define :user do |user|
  user.name                  "Michael Hartl"
  user.email                 "mhartl@example.com"
  user.password              "foobar"
end
 
Factory.define :post do |post|
  post.title "Title"
  post.description "Description"
  post.association :category
  post.association :user
end
 
Factory.sequence :category_name do |n|
  "#{n}"
end
 
Factory.define :category do |c|
  c.name  Factory.next :category_name
end
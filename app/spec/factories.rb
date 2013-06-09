FactoryGirl.define do 
     factory :user do |user| 
       user.name                  "Michael Hartl" 
       user.email                 "mhartl@example.com" 
       user.password              "foobar" 
     end 
end 
 
FactoryGirl.define do 
     factory :post do |post| 
       post.title "Title" 
       post.description "Description" 
       post.association :category 
       post.association :user 
     end 
end 
  
FactoryGirl.define do 
     sequence (:category_name) { |n| "#{n}" } 
 
     factory :category do |c| 
       c.name  { Factory.next(:category_name) } 
     end 
end
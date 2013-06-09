#!/bin/env ruby
# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DatabaseCleaner.clean_with(:truncation)

posts = Post.create([{ name: 'Lorem ipsum', title: 'dolor sit amet, consectetur adipiscing elit.', content: 'Praesent dictum mollis orci sit amet dapibus. Quisque neque odio, posuere vel tincidunt sit amet, tincidunt nec leo. Vestibulum vehicula imperdiet ligula. Nullam id nisl tortor, vel vulputate sem.', category_id: 2}, 
{ name: 'Nullam non', title: 'odio ac lorem tincidunt', content: 'facilisis quis ut nulla. Duis a nisi felis, a malesuada libero. Curabitur a tortor a augue tincidunt aliquam.', category_id: 3 }, 
{ name: 'Pellentesque tincidunt', title: 'nisi quis libero lobortis', content: 'eu aliquam leo cursus. Quisque condimentum justo eu nibh pharetra et dapibus ipsum consectetur.', category_id: 4 },
{ name: 'Ornitologicke ipsum', title: 'Brno 11', content: 'Brno 11 Ornitologicke ipsum Srdečně Vás uvítáme v našem nově zřízeném zařízení určeném k obecné osvětě v problematice lorem ipsum.', category_id: 1 },
{ name: 'Psí tréningová jahoda', title: 'Valašské Klobouky 3', content: 'Valašské Klobouky 3 Psí tréningová jahoda Srdečně Vás uvítáme v našem nově zřízeném zařízení určeném k obecné osvětě v problematice lorem ipsum.', category_id: 2 },
{ name: 'Psí tréningový kemp', title: 'Valašské Klobouky 3', content: 'Valašské Klobouky 3 Psí tréningový kemp Srdečně Vás uvítáme v našem nově zřízeném zařízení určeném k obecné osvětě v problematice lorem ipsum.', category_id: 1 },
{ name: 'Psí tréningová náhoda', title: 'Valašské Klobouky 3', content: 'Valašské Klobouky 3 Psí tréningová náhoda Srdečně Vás uvítáme v našem nově zřízeném zařízení určeném k obecné osvětě v problematice lorem ipsum.', category_id: 1 },
{ name: 'Psí tréningová Na Františku', title: 'Valašské Klobouky 3', content: 'Valašské Klobouky 3 Psí tréningová Na Františku Srdečně Vás uvítáme v našem nově zřízeném zařízení určeném k obecné osvětě v problematice lorem ipsum.', category_id: 3 },
{ name: 'Psí tréningová svoboda', title: 'Visuté Hnízdo', content: 'Visuté Hnízdo Psí tréningová svoboda a společníci.', category_id: 1 },
{ name: 'Pozorovatelna orlů Jaroslav Pták', title: 'Visuté Hnízdo', content: 'Visuté Hnízdo Pozorovatelna orlů Jaroslav Pták a společníci.', category_id: 4 },
{ name: 'Pozorovatelna orlů Augustýn Orel', title: 'Visuté Hnízdo', content: 'Visuté Hnízdo Pozorovatelna orlů Augustýn Orel a společníci.', category_id: 1 },
{ name: 'Pozorovatelna orlů Jeroným Sup', title: 'Visuté Hnízdo', content: 'Visuté Hnízdo Pozorovatelna orlů Jeroným Sup a společníci.', category_id: 2 },
{ name: 'Pozorovatelna orlů Ferdinand Vrána', title: 'Visuté Hnízdo', content: 'Visuté Hnízdo Pozorovatelna orlů Ferdinand Vrána a společníci.', category_id: 1 }]
)
categories = Category.create([{ name: 'pes'}, 
{ name: 'pták' }, 
{ name: 'králík' }, 
{ name: 'kočka' }])
tags = Tag.create([{ name: 'kocka mourovata', post_id: 1, post_id: 3 }, 
{ name: 'kralik domaci', post_id: 1, post_id: 3 }, 
{ name: 'osmak degu', post_id: 2 }, 
{ name: 'yorksirsky terier', post_id: 3 }, 
{ name: 'britska kocka', post_id: 3 }, 
{ name: 'nemecky ovcak', post_id: 2 }, 
{ name: 'nemecky krepelak', post_id: 2  }, 
{ name: 'nemecky lovecky terier', post_id: 1  }, 
{ name: 'jagdterier', post_id: 2, post_id: 3  }])
comments = Comment.create([{ commenter: 'Jarda', body: 'Proin id ultricies elit.', post_id: 1 },
	{ commenter: 'Jarda', body: 'Donec et dui sem, ac vehicula nisi.', post_id: 1 },
	{ commenter: 'Jarda', body: 'Sed porttitor tincidunt pretium. ', post_id: 2 },
	{ commenter: 'Jarda', body: 'Ut consequat, nibh eu adipiscing pharetra, velit magna accumsan nisi, vitae aliquam sapien augue at est.', post_id: 5 },
	{ commenter: 'Jarda', body: 'Ut nec ullamcorper massa.', post_id: 6 }])
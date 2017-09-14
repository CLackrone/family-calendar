Category.create([
  {:name => "sport"},
  {:name => "church"},
  {:name => "school"},
  {:name => "leisure"}
  ])

@category_count = Category.all.count

Event.create([
  {:name => "", :time => "", :location => "", :category_id => rand(1..@category_count)},
  ])

FamilyMemberEvent.create([
  {:family_member_id => , :event_id => },
  ])

#ready
5.times do 
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

FamilyMember.create([
  {:name => "", :age =>},
  ])
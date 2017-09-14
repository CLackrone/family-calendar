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
User.create(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )

#ready
FamilyMember.create([
  {:name => "Charisa", :age => 36},
  {:name => "Luke", :age => 34},
  {:name => "Ada", :age => 5},
  {:name => "Eliza", :age => 2}
  ])
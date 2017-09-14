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

#ready
FamilyMemberEvent.create([
  {:family_member_id => 1, :event_id => 1},
  {:family_member_id => 2, :event_id => 1},
  {:family_member_id => 3, :event_id => 1},
  {:family_member_id => 4, :event_id => 1},
  {:family_member_id => 1, :event_id => 2},
  {:family_member_id => 2, :event_id => 2},
  {:family_member_id => 3, :event_id => 3},
  {:family_member_id => 4, :event_id => 3},
  {:family_member_id => 1, :event_id => 4}
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
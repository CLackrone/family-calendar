Category.create([
  {:name => "sport"},
  {:name => "church"},
  {:name => "school"},
  {:name => "leisure"}
  ])

Event.create([
  {:name => "church", :time => "Sunday 9:15", :location => "Grace Community", :category_id => 2},
  {:name => "date night", :time => "Friday 6:00", :location => "Seasons 52", :category_id => 4},
  {:name => "dance class", :time => "Saturday 11:30", :location => "Studio Dans", :category_id => 1},
  {:name => "yoga", :time => "Saturday 8:30", :location => "Haven", :category_id => 1},
  {:name => "Back to school night", :time => "Thursday 6:30", :location => "Fulton Elementary", :category_id => 3}
  ])

FamilyMemberEvent.create([
  {:family_member_id => 1, :event_id => 1},
  {:family_member_id => 2, :event_id => 1},
  {:family_member_id => 3, :event_id => 1},
  {:family_member_id => 4, :event_id => 1},
  {:family_member_id => 1, :event_id => 2},
  {:family_member_id => 2, :event_id => 2},
  {:family_member_id => 3, :event_id => 3},
  {:family_member_id => 4, :event_id => 3},
  {:family_member_id => 1, :event_id => 4},
  {:family_member_id => 2, :event_id => 5}
  ])

User.create(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )

FamilyMember.create([
  {:name => "Charisa", :age => 36},
  {:name => "Luke", :age => 34},
  {:name => "Ada", :age => 5},
  {:name => "Eliza", :age => 2}
  ])
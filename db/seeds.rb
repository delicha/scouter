2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 0,
    hobby: "テニス",
    character: "せっかち",
    generation: 0,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 1,
    hobby: "サッカー",
    character: "おっとり",
    generation: 0,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 0,
    hobby: "ドライブ",
    character: "楽観的",
    generation: 1,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'pass',
    password_confirmation: 'pass',
    admin: false,
    sex: 1,
    hobby: "カラオケ",
    character: "悲観的",
    generation: 1,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 0,
    hobby: "Youtube",
    character: "社交的",
    generation: 2,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 1,
    hobby: "格闘技",
    character: "攻撃的",
    generation: 2,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 0,
    hobby: "寝る",
    character: "受け身",
    generation: 3,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 1,
    hobby: "なし",
    character: "無感情",
    generation: 3,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 0,
    hobby: "読書",
    character: "おせっかいやき",
    generation: 4,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 1,
    hobby: "釣り",
    character: "のんびり",
    generation: 4,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    admin: false,
    sex: 0,
    hobby: "プラモデル",
    character: "頑固",
    generation: 5,
    point: 0,
  )
end

2.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'pass',
    password_confirmation: 'pass',
    admin: false,
    sex: 1,
    hobby: "料理",
    character: "受け身",
    generation: 5,
    point: 0,
  )
end

User.create!(
  name: "しょう",
  email: "sho@email.com",
  password: 'password',
  admin: true,
  sex: 1,
  hobby: "料理",
  character: "受け身",
  generation: 3,
  point: 10000,
)

User.create!(
  name: "なつみ",
  email: "natsumi@email.com",
  password: 'password',
  admin: false,
  sex: 0,
  hobby: "料理",
  character: "受け身",
  generation: 0,
  point: 10000,
)

User.create!(
  name: "ゆうちゃん",
  email: "yuchan@email.com",
  password: 'password',
  admin: false,
  sex: 0,
  hobby: "ボクシング",
  character: "繊細",
  generation: 2,
  point: 0,
)

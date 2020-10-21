class History < ActiveHash::Base
  include ActiveHash::Associations
  field :choice
  add id: 1, choice: "１年"
  add id: 2, choice: "２年"
  add id: 3, choice: "３年"
  add id: 4, choice: "４年"
  add id: 5, choice: "５年"
  add id: 6, choice: "６年"
  add id: 7, choice: "7年"
  add id: 8, choice: "8年"
  add id: 9, choice: "9年"
  add id: 10, choice: "10年"
  add id: 11, choice: "11年"
  add id: 12, choice: "12年"
  
  has_many :humans
end

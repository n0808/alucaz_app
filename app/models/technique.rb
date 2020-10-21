class Technique <ActiveHash::Base
  include ActiveHash::Associations
  field :choice
  add id: 1, choice: "カット"
  add id: 2, choice: "カット＋カラー"
  add id: 3, choice: "カット＋パーマ"
  add id: 4, choice: "カット＋カラー＋パーマ"
  
  has_many :humans
end

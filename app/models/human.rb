class Human < ApplicationRecord
  belongs_to :user, optional: true
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_associated :images
  validates :images, presence: { message: "は一枚以上必須です" }

  validates :name, presence: true
  validates :price, presence: true
  validates :explain, presence: true
  validates :area, presence: true
  validates :prefecture_id, presence: true
  validates :gender_id, presence: true
  validates :technique_id, presence: true
  validates :history_id, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :gender
  belongs_to_active_hash :technique
  belongs_to_active_hash :history

end

class Post < ApplicationRecord

  belongs_to :user

  has_many :photos, dependent: :destoroy

  accept_nested_attributes_for :photos
end

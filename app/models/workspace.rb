class Workspace < ApplicationRecord
  has_many :users
  has_many :thanks
  has_many :receivers
end

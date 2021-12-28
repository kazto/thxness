class User < ApplicationRecord
  belongs_to :workspace
  has_many :thanks
end

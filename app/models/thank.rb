class Thank < ApplicationRecord
  belongs_to :workspace
  has_many :receivers
end

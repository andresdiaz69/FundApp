class ProfileRole < ApplicationRecord
  belongs_to :role
  belongs_to :profile
end

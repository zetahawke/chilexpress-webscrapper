class Office < ActiveRecord::Base
  ## RELATIONS
  belongs_to :company
  has_many :users
  has_many :admins, through: :users
  has_many :employees, through: :users
end

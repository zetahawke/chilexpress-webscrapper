class Company < ActiveRecord::Base
  ## RELATIONS
  has_many :offices
  has_many :packages, through: :offices
end

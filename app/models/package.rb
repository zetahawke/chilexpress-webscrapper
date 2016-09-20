class Package < ActiveRecord::Base
  ## RELATIONS
  belongs_to :office
  has_one :company, through: :office
end

class User < ActiveRecord::Base
  ## LOCAL METHODS
  attr_accessor :type

  ## STATIC VALUES
  ROLES = %W[admin employee]

  ## ACT ASS SUPERCLASS
  actable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## RELATIONS
  belongs_to :office
  has_one :company, through: :office
  
  def type
    @type
  end

  def type=(params)
    @type = params
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end

  ## INSTANCE METHODS
  ROLES.each do |role_name|
    define_method "#{role_name}?".to_sym do
      self.role?.present? && (self.role?.eql? role_name)
    end
  end

  def role?
    self.actable_type.underscore
  end
end

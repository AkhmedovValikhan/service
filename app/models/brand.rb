class Brand < ActiveRecord::Base
  has_many :devices
  has_many :spares
end
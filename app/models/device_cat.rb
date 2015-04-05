class DeviceCat < ActiveRecord::Base
  has_many :devices
  has_many :spares
end
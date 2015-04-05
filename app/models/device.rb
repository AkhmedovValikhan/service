class Device < ActiveRecord::Base
  belongs_to :brand
  belongs_to :device_cat
end
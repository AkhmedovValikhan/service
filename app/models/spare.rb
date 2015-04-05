class Spare < ActiveRecord::Base
  belongs_to :spare_cat
  belongs_to :device_cat
  belongs_to :brand
  has_and_belongs_to_many :tasks

end
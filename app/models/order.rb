class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :device
  belongs_to :dispatcher, class_name: 'Employee'
  belongs_to :master, class_name: 'Employee' #try scope
  belongs_to :status
  has_many :tasks
end
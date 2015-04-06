# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#brands
  brands = %w{ Alcatel Apple Asus Benq BenqSiemens BlackBerry Digma DNS Fly GSmart HP HTC}
  brands.each do |brand|
    Brand.create title: brand

  end
  

#device_cats
  cats = %w{ Телефоны Планшеты Ноутбуки }
  cats.each do |cat|
    DeviceCat.create title: cat
  end

#devices
  devices = %w{ Iphone IPad IPod }
  devices.each do |dev|
    Device.create title: dev, brand: Brand.find_by(title: 'Apple'), device_cat: DeviceCat.find_by(id: 1)
  end

#posts
  Post.create title: "Приемщик"
  Post.create title: "Мастер"
  Post.create title: "Администратор"

#statuses
  statuses = %w{ accepted pending }
  statuses.each do |s|
    Status.create title: s
  end

#--- Test Data ---


#employees
  Employee.create first_name: 'Сосо', last_name: 'Павлиавшвилли', middle_name: 'Иванович', phone: '890880888', address: "ул. пушкина, 2", post: Post.find_by(id: 1)
  Employee.create first_name: 'Вася', last_name: 'Васильев', middle_name: 'Васильевич', phone: '890123545', address: "ул. пушкина, 3", post: Post.find_by(id: 2)
  Employee.create first_name: 'Иван', last_name: 'Иванов', middle_name: 'Иванович', phone: '890123545', address: "ул. пушкина, 2", post: Post.find_by(id: 3)

#admin
  User.create login: 'admin', password: '123456', employee: Employee.find_by(id: 3)

#clients
  Client.create first_name: 'Иван', last_name: 'Иванов', middle_name: 'Иванович', phone: '8800200600', address: "ул. косарева, 2"
  Client.create first_name: 'Семен', last_name: 'Семенов', middle_name: 'Семенович', phone: '8885800600', address: "ул. косарева, 3"
  Client.create first_name: 'Игнат', last_name: 'Игнатов', middle_name: 'Игнатович', phone: '848585880', address: "ул. косарева, 4"

#

#orders
  Order.create client: Client.find_by(id: 1), master: Employee.find_by(id: 2), dispatcher: Employee.find_by(id: 1), device: Device.find(1), serial: '88888', imei: '32323',
    bug: 'Чото не звонит', urgent: false, status: Status.find(1)
  Order.create client: Client.find_by(id: 1), master: Employee.find_by(id: 2), dispatcher: Employee.find_by(id: 1), device: Device.find(3), serial: '88888', imei: '32323',
    bug: 'Не включается', urgent: false, status: Status.find(1)



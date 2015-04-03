class CreateLayoutFromSchema < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer  :client_id
      t.integer  :master_id
      t.integer  :dispatcher_id
      t.integer  :device_id
      t.string   :serail
      t.integer  :imei
      t.string   :bug
      t.integer  :status_id
      t.string   :dispatchers_note
      t.string   :masters_note
      t.datetime :reception_date
      t.datetime :issue_date
      t.datetime :approx_date
      t.decimal  :prepayment, precision: 12, scale: 2 #currency

      t.timestamps
    end

    create_table :statuses do |t|
      t.string :title
      t.timestamps
    end

    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :phone
      t.string :address
      t.string :email
      t.string :vk
      t.timestamps
    end

    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :phone
      t.string :address
      t.string :email
      t.string :vk
      t.datetime :hire_date
      t.datetime :birth_date
      t.integer :post_id
      t.timestamps
    end

    create_table :posts do |t|
      t.string :title
      t.timestamps
    end

    create_table :devices do |t|
      t.string  :title
      t.integer :brand_id
      t.integer :category_id
      t.timestamps
    end
    
    create_table :brands do |t|
      t.string :title
      t.timestamps
    end

    create_table :device_cats do |t|
      t.string :title
      t.timestamps
    end

    create_table :order_tasks do |t|
      t.integer :order_id
      t.integer :task_id
      t.timestamps
    end

    create_table :tasks do |t|
      t.string :title
      t.decimal :price, precision: 12, scale: 2
      t.timestamps
    end

    create_table :task_spares do |t|
      t.integer :task_id
      t.integer :spare_id
      t.timestamps
    end

    create_table :spares do |t|
      t.string :title
      t.integer :category_id
      t.integer :brand_id
      t.integer :device_cat_id
      t.timestamps
    end

    create_table :spare_prices do |t|
      t.integer :spare_id
      t.datetime :date
      t.decimal :price, precision: 12, scale: 2
      t.integer :vendor_id
      t.timestamps
    end

    create_table :vendors do |t|
      t.string :name
      t.timestamps
    end

    create_table :users do |t|
      t.string   :login
      t.string   :password_digest
      t.integer  :role_id
      t.integer  :employee_id
      t.timestamps
    end

    create_table :roles do |t|
      t.string :title
      t.timestamps
    end




  end
end

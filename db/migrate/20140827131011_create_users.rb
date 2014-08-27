class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :surename
      t.string :name
      t.string :second_name
      t.date :birthday
      t.string :login
      t.string :email

      t.timestamps
    end
  end
end

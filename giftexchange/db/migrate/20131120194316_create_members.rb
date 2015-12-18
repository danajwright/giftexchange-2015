class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :email
      t.string :interests
      t.boolean :dependent
      t.timestamps
    end
  end
end

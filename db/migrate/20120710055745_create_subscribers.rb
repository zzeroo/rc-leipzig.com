class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :event_id
      t.string :grade

      t.timestamps
    end
  end
end

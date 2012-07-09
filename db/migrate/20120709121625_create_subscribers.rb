class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :firstname
      t.string :email
      t.string :association
      t.integer :event_id
      t.integer :grade_id

      t.timestamps
    end
  end
end

class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string
lastname :firstname

      t.timestamps
    end
  end
end

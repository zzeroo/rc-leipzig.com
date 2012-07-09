class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :startdate
      t.date :enddate
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :id
      t.string :title
      t.string :description
      t.string :time

      t.timestamps
    end
  end
end

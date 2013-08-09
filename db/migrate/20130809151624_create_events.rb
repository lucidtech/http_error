class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :response

      t.timestamps
    end
  end
end

class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :type
      t.string :format

      t.timestamps null: false
    end
  end
end

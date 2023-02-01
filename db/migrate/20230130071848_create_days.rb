class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.date :date
      t.references :line, null: false, foreign_key: true
      t.string :time1
      t.string :time2
      t.string :time3
      t.string :time4
      t.string :time5
      t.string :time6
      t.string :time7
      t.string :time8
      t.string :time9
      t.string :time10
      t.string :time11
      t.string :time12
      t.string :time13
      t.string :time14
      t.string :time15
      t.string :time16
      t.string :time17
      t.string :time18
      t.string :time19
      t.string :time20
      t.string :time21
      t.string :time22
      t.string :time23
      t.string :time24

      t.timestamps
    end
  end
end

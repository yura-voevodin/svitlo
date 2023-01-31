class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.date :date
      t.references :line, null: false, foreign_key: true
      t.boolean :time1, default: false
      t.boolean :time2, default: false
      t.boolean :time3, default: false
      t.boolean :time4, default: false
      t.boolean :time5, default: false
      t.boolean :time6, default: false
      t.boolean :time7, default: false
      t.boolean :time8, default: false
      t.boolean :time9, default: false
      t.boolean :time10, default: false
      t.boolean :time11, default: false
      t.boolean :time12, default: false
      t.boolean :time13, default: false
      t.boolean :time14, default: false
      t.boolean :time15, default: false
      t.boolean :time16, default: false
      t.boolean :time17, default: false
      t.boolean :time18, default: false
      t.boolean :time19, default: false
      t.boolean :time20, default: false
      t.boolean :time21, default: false
      t.boolean :time22, default: false
      t.boolean :time23, default: false
      t.boolean :time24, default: false

      t.timestamps
    end
  end
end

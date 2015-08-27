class CreateTable < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.text :description
      t.string :interviewer
      t.date :interviewTime
      t.timestamps
    end
  end
end

class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string   :firstname
      t.string   :lastname
      t.integer  :moodle_id
      t.string   :email
      t.integer  :examen_note
      t.integer  :total_course
      t.timestamps
    end
  end
end

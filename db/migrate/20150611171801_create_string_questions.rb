class CreateStringQuestions < ActiveRecord::Migration
  def change
    create_table :string_questions do |t|
      t.text :query
      t.text :answer
      t.integer :survey_id

      t.timestamps null: false
    end
  end
end

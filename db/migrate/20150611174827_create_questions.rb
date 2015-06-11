class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :query
      t.string :type
      t.integer :survey_id

      t.timestamps null: false
    end
  end
end
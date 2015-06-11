class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :query_type
      t.text :query
      t.integer :survey_id
      t.boolean :required
      t.integer :position
      t.text :description

      t.timestamps null: false
    end
  end
end

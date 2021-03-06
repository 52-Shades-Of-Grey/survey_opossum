class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :keyword
      t.integer :user_id
      t.text :description
      t.boolean :published

      t.timestamps null: false
    end
  end
end

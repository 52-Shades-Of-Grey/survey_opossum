class AddUrlToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :url, :text
  end
end

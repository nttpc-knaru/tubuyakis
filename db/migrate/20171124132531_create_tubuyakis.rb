class CreateTubuyakis < ActiveRecord::Migration
  def change
    create_table :tubuyakis do |t|
  
      t.text :content

      t.timestamps null: false
    end
  end
end

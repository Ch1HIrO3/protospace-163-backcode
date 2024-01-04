class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|

      t.timestamps
      t.string :title
      t.text :catch_copy
      t.text :concept
      
    end
  end
end

class CreateYamanoteLines < ActiveRecord::Migration[5.1]
  def change
    create_table :yamanote_lines do |t|
      t.string :station

      t.timestamps
    end
  end
end

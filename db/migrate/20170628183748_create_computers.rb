class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.string :hostname
      t.boolean :status

      t.timestamps
    end
  end
end

class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task
      t.boolean :status
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end

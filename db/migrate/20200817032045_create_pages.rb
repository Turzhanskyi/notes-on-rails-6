class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.integer :position
      t.references :notebook, null: false, foreign_key: true

      t.timestamps
    end
  end
end

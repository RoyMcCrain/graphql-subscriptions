class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :body
      t.references :user, null: false, foreign_key: true, index: true
      t.references :room, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end

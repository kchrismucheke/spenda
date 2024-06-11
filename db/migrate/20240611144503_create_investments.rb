class CreateInvestments < ActiveRecord::Migration[7.1]
  def change
    create_table :investments do |t|
      t.string :name
      t.decimal :value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

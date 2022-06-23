class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :evaluatee, null: false, foreign_key: { to_table: :users }
      t.integer :evaluation_point

      t.timestamps
    end
  end
end

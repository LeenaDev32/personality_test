class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :text
      t.string :category
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end

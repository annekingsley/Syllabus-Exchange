class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

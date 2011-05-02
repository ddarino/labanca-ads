class CreateLibros < ActiveRecord::Migration
  def self.up
    create_table :libros do |t|
      t.string :nombre
      t.string :isbn
      t.text :comentario

      t.timestamps
    end
  end

  def self.down
    drop_table :libros
  end
end

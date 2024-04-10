class CreateElemoods < ActiveRecord::Migration[7.1]
  def change
    create_table :elemoods do |t|
      t.string :nombre
      t.string :usuario
      t.string :correo
      t.string :bitrix24
      t.string :equipo
      t.string :tipo
      t.string :ubicacion
      t.string :procesador
      t.string :grafica
      t.string :memoria
      t.string :disco
      t.string :monitor
      t.string :mouse
      t.string :teclado
      t.string :diadema
      t.string :base_refrigerante
      t.string :celular
      t.string :otro_accesorio
      t.string :observaciones

      t.timestamps
    end
  end
end

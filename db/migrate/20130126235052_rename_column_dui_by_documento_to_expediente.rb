class RenameColumnDuiByDocumentoToExpediente < ActiveRecord::Migration
  def up
  	rename_column :expedientes, :dui, :documento_identidad
  end

  def down
  end
end

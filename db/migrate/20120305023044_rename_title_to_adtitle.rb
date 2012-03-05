class RenameTitleToAdtitle < ActiveRecord::Migration
  def up
  	rename_column :apartments, :title, :ad_title
  end

  def down
  end
end

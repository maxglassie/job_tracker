class ChangeColumnNameForJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :category, :category_id
  end
end

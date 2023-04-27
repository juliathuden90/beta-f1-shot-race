class RenameThisYearsDateForTracks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tracks, :ThisYearsDate, :this_years_date
  end
end

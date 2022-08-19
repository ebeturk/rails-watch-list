class RmColumnsMovieIdListId < ActiveRecord::Migration[7.0]
  def change
    change_table(:bookmarks) do |t|
    t.remove :movie_id
    t.remove :list_id
    end
  end
end

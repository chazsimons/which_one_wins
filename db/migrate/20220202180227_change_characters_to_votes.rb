class ChangeCharactersToVotes < ActiveRecord::Migration[5.2]
  def change
    rename_table :characters, :votes
  end
end

class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true # Usersテーブルのemailカラムにインデックスを追加するためにadd_indexというRailsメソッドを使っています。
  end
end

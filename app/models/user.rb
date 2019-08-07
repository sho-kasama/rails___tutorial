class User < ApplicationRecord
    
    before_save { email.downcase! }
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false} # case_sensitive オプションは大文字、小文字の違いを確認する制約をかけるかどうかも定義できます。
    has_secure_password  # has_secure_password メソッドは存在性のバリデーションもしてくれるのですがこれは新しくレコードが追加された時だけ、従ってユーザーが文字列をパスワード欄に入力して更新しようとすると、バリデーションが適用されずに更新されてしまう問題が発生する
    validates :password, presence:true ,length: { minimum: 6 }


end

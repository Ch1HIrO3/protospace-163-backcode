# README

##　usersテーブル
| Column             | Type       | Options                    |
| ------------------ | ---------- | -------------------------- |
| email              | string     | null: false, unique: true  |
| encrypted_password | string     | null: false                |
| name               | string     | null: false                |ユーザー名
| profile            | text       | null: false                |プロフィール
| occupation         | text       | null: false                |所属
| position           | text       | null: false                |役職

### Association
- has_many :prototype
- has_many :comments

##　prototypesテーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| catch_copy | text       | null: false                    |
| concept    | text       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association
- belongs_to :users
- has_many :comments

##　commentsテーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | text       | null: false                    |
| prototype  | text       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association
- belongs_to :users
- belongs_to :prototypes
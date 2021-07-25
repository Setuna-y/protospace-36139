# テーブル設計

## users テーブル

| Column     | Type    | Options  |
| ---------- | ------- | -------- |
| email      | strings | not null |
| password   | strings | not null |
| name       | strings | not null |
| profile    | text    | not null |
| occupation | text    | not null |
| position   | text    | not null |

### Association

- has_many :prototypes
- has_many :comments

## prototype テーブル

| Column     | Type       | Options  |
| ---------- | ---------- | -------- |
| title      | strings    | not null |
| catch_copy | text       | not null |
| concept    | text       | not null |
| image      |            |          |
| user       | references |          |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options  |
| --------- | ---------- | -------- |
| text      | text       | not null |
| user      | references |          |
| prototype | references |          |

### Association

- belongs_to :user
- belongs_to :prototype


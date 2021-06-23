## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| nickname   | string | null: false |

### Association

- has_many :posts
- has_many :comments
- has_many :likes

## posts テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| title       | string     | null: false |
| description | text       | null: false |
| video       | text       | null: false |
| image       |            | null: false |
| user        | references | null: false |

### Association

_ has_many :comments
- belongs_to :users

## comments テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| content     | string     | null: false |
| post        | references | null: false |
| user        | references | null: false |

- belongs_to :user
- belongs_to :post

# likes テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| post        | references | null: false |
| user        | references | null: false |

- belongs_to :user
- belongs_to :post

# rerlationships テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| follow      | references | null: false |
| user        | references | null: false |

- belongs_to :user
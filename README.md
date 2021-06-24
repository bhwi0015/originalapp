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

##アプリケーション名
『Study Output』

##アプリケーション概要
ヘルスケアアプリケーションです。
1日に必要な運動、食事、睡眠を計算し、アドバイスをして理想の1日へと導いてくれます。
ストレスが溜まっている時や気分が晴れない時、生活が偏ってしまいますが理想の運動、食事、睡眠は取れているのかアプリが管理します。


URL
https://whispering-gorge-16101.herokuapp.com/posts
-ID/Pass
ID: yy.bhwi
Pass: 1015
-テスト用アカウント
メールアドレス: s100.hanai.yusuke@gmail.com
パスワード: yy1015



利用方法
まずユーザー認証をする必要があります。ユーザー認証が全ての機能を使用することができます。

記事投稿
ヘッダーの右上の投稿ボタンをクリックすると記事の投稿をすることができます。記事の投稿に必須なのはタイトル、タグ、本文です。それを全て入力すると記事を投稿することができます。

記事一覧
投稿した記事はindexページに表示されます。サイドバーには人気のあるタグが15個存在し、それをクリックするとタグ検索ができます。ページの上部にあるナビゲーションバーで記事の並び替えをすることができます。「新着記事順」と「いいね数の多い記事順」、「閲覧数の多い記事順」の3つの条件で並び替えが可能です。一番右にある「全タグ一覧」はアプリケーションで使用されているタグが全て表示されます。

記事検索機能
ヘッダーにある検索バーでタグと記事タイトルの複合検索ができます。

記事詳細機能
記事詳細ページでは記事の閲覧、いいね、ストックコメントなどをすることができます。記事投稿者本人は記事の削除、編集をすることができます。 最下部にはタグを部分検索したレコメンドシステムでおすすめの記事が表示されます。

通知機能
自分が投稿した記事のコメント、いいねや自分に対するフォローには通知がきます。通知が存在する場合はヘッダーのベルマークに黄色い丸が表示されます。クリックするとモーダルで通知一覧が表示されます。

DM機能
ユーザー同士はDMでコミュニケーションを取ることができます。メッセージはリアルタイムで反映されます。

目指した課題解決
このアプリケーションは高校生は十分なアウトプットをできていないのではないかという問題意識から生まれました。学習において一番大事なのはアウトプットすることです。アウトプットをすれば、人に教えるスキルが上がったり、頭の中が整理され、理解度が向上します。プログラミング界隈にはアウトプットの文化がありますが、高校生の学習においてはそのような文化はありません。僕は大手予備校に通っていましたが、そこは知識をただ単にインプットさせるだけで、最も効果のあるアウトプットの作業を無視していました。このアプリケーションで高校の学習にアウトプットの文化を作りたいです。

洗い出した要件

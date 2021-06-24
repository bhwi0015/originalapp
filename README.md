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

## likes テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| post        | references | null: false |
| user        | references | null: false |

- belongs_to :user
- belongs_to :post

## rerlationships テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| follow      | references | null: false |
| user        | references | null: false |

- belongs_to :user

# HealthYourself


# アプリケーション概要
ヘルスケアアプリケーションです。
1日に必要な運動、食事、睡眠を計算し、アドバイスをして理想の1日へと導いてくれます。
ストレスが溜まっている時や気分が晴れない時、生活が偏ってしまいガチですが理想の運動、食事、睡眠は取れているのかアプリが管理します。


# URL
https://whispering-gorge-16101.herokuapp.com
-ID/Pass
ID: yy.bhwi
Pass: 1015
-テスト用アカウント
メールアドレス: s100.hanai.yusuke@gmail.com
パスワード: yy1015


## ユーザー管理機能
ニックネーム、メールアドレス、パスワードを登録することで、アプリのトップページに進む事ができます。

## 動画投稿
ヘッダーの右上の投稿ボタンをクリックすると動画の投稿をすることができます。動画の投稿に必須なのは動画、サムネ画像、タイトル、動画の内容です。それを全て入力すると動画を投稿することができます。

## 動画一覧
投稿した動画はindexページに表示されます。

## 動画詳細
動画詳細ページでは動画の閲覧。動画投稿者本人は記事の削除、編集をすることができます。

## 高評価機能
動画一覧、動画詳細から高評価する事ができます。また高評価の総数がわかります

## コメント
不具合を発見したため未実装、動画にコメントをする事ができます、またコメント投稿者であればコメントを消去できます。

## フォロー
ユーザーをフォローする事ができます、ユーザーページはまだ未実装です

## Tag付け機能
（未実装）

## 投稿検索
（未実装）

## 通知
（未実装）


#目指した課題解決
このアプリケーションはリモートワークによる運動不足や日々のストレス軽減のため生まれました。
運動、食事、睡眠を十分にとってこそ、心身ともに100%の力を発揮します。またこのバランスが崩れることで、イライラしてしまったり、疲れが取れない原因となります。
しかし自分で生活習慣を管理することは大変です、気ずくと睡眠が取れてない、栄養が足りないこともあります。
簡単に自己管理ができるので現在の自分のを見つめ直せます。

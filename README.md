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

- has_many :comments
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

## relationships テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| follow      | references | null: false |
| user        | references | null: false |

- belongs_to :user

# HealthYourself


# アプリケーション概要
ヘルスケアアプリケーションです。
1日に必要な運動、食事、睡眠を計算し、アドバイスをして理想の1日へと導いてくれます。
ストレスが溜まっている時や気分が晴れない時、生活習慣が崩れてしまいガチですが理想の運動、食事、睡眠は取れているのかアプリが管理します。


## URL
https://whispering-gorge-16101.herokuapp.com
- ID/Pass
- ID: yy.bhwi
- Pass: 1015
## テスト用アカウント
- メールアドレス: s100.hanai.yusuke@gmail.com
- パスワード: yy1015


## ユーザー管理機能
ニックネーム、メールアドレス、パスワードを登録することで、アプリのトップページに進む事ができます。
![touroku](https://user-images.githubusercontent.com/64278026/123901891-cfdb8200-d9a6-11eb-9338-5f4c030d7061.gif)

## 動画投稿
ヘッダーの右上の投稿ボタンをクリックすると動画の投稿をすることができます。動画の投稿に必須なのは動画、サムネ画像、タイトル、動画の内容です。それを全て入力すると動画を投稿することができます。
![toukougamen](https://user-images.githubusercontent.com/64278026/123903492-c30c5d80-d9a9-11eb-80c7-e8e813377f4c.gif)

## プレビュー機能
投稿する画像、動画のプレビューを自動で生成します。
![preview](https://user-images.githubusercontent.com/64278026/123903912-85f49b00-d9aa-11eb-88ad-5faa1dcbfa86.gif)

## 動画一覧
投稿した動画はindexページに表示されます。
![toukou](https://user-images.githubusercontent.com/64278026/123900000-365ea100-d9a3-11eb-9199-a048d2132ecf.gif)

## 動画詳細
動画詳細ページでは動画の閲覧。動画投稿者本人は記事の削除、編集をすることができます。
![syousai](https://user-images.githubusercontent.com/64278026/123902289-948d8300-d9a7-11eb-8a2f-b4b2e0a4b1a2.gif)

## 高評価機能
動画一覧、動画詳細から高評価する事ができます。また高評価の総数がわかります.
![iine](https://user-images.githubusercontent.com/64278026/123902615-1f6e7d80-d9a8-11eb-9d00-413e9adad9bd.gif)

## コメント
実装中です、動画にコメントをする事ができます、またコメント投稿者であればコメントを消去できます。

## フォロー機能
ユーザーをフォローする事ができます。またユーザーのフォロー、フォロワーを確認できます。
![follow](https://user-images.githubusercontent.com/64278026/123904143-f4d1f400-d9aa-11eb-8364-f10464151549.gif)

## Tag付け機能
（未実装）

## 投稿検索
（未実装）

## 通知
（未実装）

## 睡眠計算機能
(未実装)

##カロリー計算機能
(未実装)

# 目指した課題解決
このアプリケーションはリモートワークによる運動不足や日々のストレス軽減のため生まれました。
運動、食事、睡眠を十分にとってこそ、心身ともに100%の力を発揮します。またこのバランスが崩れることで、イライラしてしまったり、疲れが取れない原因となります。
しかし自分で生活習慣を管理することは大変です、気がつくと睡眠が取れてない、栄養が足りないこともあります。
簡単に自己管理ができるアプリなので自分の現在を見つめ直せます。

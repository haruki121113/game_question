# README

# アプリケーション名

game question

# アプリケーション概要

ゲームに関する質問を投稿し、ユーザー同士でコミュニケーションをとることで、疑問を解決することができる。

# URL
https://game-question.herokuapp.com/

# テスト用アカウント

・Basic認証ID：admin

・Basic認証パスワード：2222

・メールアドレス：sato@gmail.com

・パスワード：s1920203

# 利用方法

## 質問投稿

1.トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う。
2.質問を投稿するボタンから、質問の内容(タイトル・具体的な質問内容)を入力し投稿する。

## 質問にコメントする

1.一覧ページから任意の投稿をクリックして、質問詳細ページに遷移する。
2.コメント入力欄にコメントを入力し、投稿する。

## 質問を検索する

1.一覧ページの検索欄に検索キーワードを入力して、検索ボタンをクリックする。
2.検索キーワードがタイトル、具体的な質問内容に含まれている投稿が一覧表示される。

# アプリケーションを作成した背景

自分が趣味でやっているゲームで、疑問に思ったことを質問でき、コツなどを教えてくれる場が欲しいと思いました。この課題を解決するために、特定のゲームに特化した質問投稿サイトを開発することにしました。

# 洗い出した要件

[要件を定義したシート](https://docs.google.com/spreadsheets/d/1SQFS5LaHLOjGRdL_dIZjOEKki0l-4ADHKmN1D1EwGDs/edit#gid=982722306)

# 実装した機能についての画像やGIFおよびその説明

## 質問新規投稿機能

投稿内容が正しく入力されていて、投稿ボタンをクリックすると一覧ページに遷移し、投稿した内容が表示される
[![Image from Gyazo](https://i.gyazo.com/16e5bc3a69544006c5c53465b9900d04.gif)](https://gyazo.com/16e5bc3a69544006c5c53465b9900d04)

## 質問詳細表示・コメント機能

投稿の投稿者以外の場所をクリックすると質問の詳細画面に遷移し、コメントを投稿することができる
[![Image from Gyazo](https://i.gyazo.com/b6ff88d519b434a2a99e4e48dc872ba6.gif)](https://gyazo.com/b6ff88d519b434a2a99e4e48dc872ba6)

ログインしていないとコメントを投稿できない
[![Image from Gyazo](https://i.gyazo.com/13f919d392391c50f76f635ec36c5a1e.png)](https://gyazo.com/13f919d392391c50f76f635ec36c5a1e)

## ユーザー詳細機能表示機能

一覧ページの投稿で投稿者の欄をクリックするとその投稿者の投稿が一覧表示される
[![Image from Gyazo](https://i.gyazo.com/331df4294507f670a7fb0270ea59033a.gif)](https://gyazo.com/331df4294507f670a7fb0270ea59033a)

## 投稿編集機能

投稿詳細表示ページで、その投稿の投稿者のみに表示される編集ボタンをクリックすると投稿編集ページに遷移する
[![Image from Gyazo](https://i.gyazo.com/477c693fc598057c8d208aa6d3ce3e9c.gif)](https://gyazo.com/477c693fc598057c8d208aa6d3ce3e9c)

投稿を編集し、投稿ボタンをクリックすると編集内容が反映され、一覧ページに遷移する
[![Image from Gyazo](https://i.gyazo.com/7426ca74b38d2546a4cc85d19af53d89.gif)](https://gyazo.com/7426ca74b38d2546a4cc85d19af53d89)

## 投稿削除機能
投稿詳細表示ページで、その投稿の投稿者のみに表示される削除ボタンをクリックすると投稿を削除でき、一覧ページに遷移する
[![Image from Gyazo](https://i.gyazo.com/78f5fa3998777db914883ce4155a0e66.gif)](https://gyazo.com/78f5fa3998777db914883ce4155a0e66)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/d1d80af3f8aea194cc480a9d649de602.png)](https://gyazo.com/d1d80af3f8aea194cc480a9d649de602)


# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/88401f9023cca6f2eaa359cabfadec99.png)](https://gyazo.com/88401f9023cca6f2eaa359cabfadec99)

# 開発環境

Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code

# ローカルでの動作方法

以下のコマンドを順に実行。

% git clone https://github.com/haruki121113/game_question.git

% cd game_question

% bundle install

% yarn install

# 工夫したポイント

投稿のcontentが3行以上になった場合、4行目以降は...と表示され省略できるようにしたことです。

投稿の内容が長くなってしまった場合一覧ページで表示する際にユーザーが見づらくなると考えました。

そこで、CSSで4行目以降を省略できるようにし、一つの投稿が表示される限界範囲を設けれたので、より使いやすいアプリになりました。
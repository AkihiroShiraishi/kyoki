# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## articlesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null:false|
|user_id|references|null: false,foreign_key: true|

### Association
- belongs_to :user
- has_many :comment

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|text|unique: true, null: false|
|password|text|null: false|

### Association
- has_many :articles
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|article_id|references|null: false, foreign_key: true|

### Association
- belongs_to: article
- belongs_to: user

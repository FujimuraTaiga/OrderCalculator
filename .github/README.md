# デモ動画


https://user-images.githubusercontent.com/61898635/183636180-41d9f493-4201-4f44-a2dc-195857222e97.mov

# 説明
バイト先の飲食店の発注管理をするアプリ。  
売上の予想額や在庫数などを入力すると必要な発注数が表示される。

## アーキテクチャ
flutter_riverpodを使ったMVVM

## Model
 - DailySales 日付、売上など
 - Item 食材の画像ファイル名、在庫、単位あたり売上など
 - Money 金額など
 - Stock 在庫数、納品予定数など

## ViewModel
 - ItemProvider
 - SalesProvider

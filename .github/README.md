# OderCalculator
バイト先の飲食店の発注管理をするアプリ。  
売上の予想額や在庫数などを入力すると必要な発注数が表示される。

## アーキテクチャ
flutter_riverpodを使ったMVVM

## Model
 - DailySales 日付、売上など
 - Item 食材の画像ファイル名、在庫、単位あたり売上など
 - Money 金額など
 - Stock 在庫数、納品予定数など

##　ViewModel
 - ItemProvider
 - SalesProvider

# デモ
https://user-images.githubusercontent.com/61898635/183635087-1a246da1-ad41-4b0c-a82e-d154e5732a90.mov


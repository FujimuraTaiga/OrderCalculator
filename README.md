# OderCalculator

バイト先の肉発注をサポートするアプリ

## アーキテクチャ
ChangeNotifierを使ったMVVMを採用。

### AmountDataクラス　---Model

今日、明日、明後日それぞれの在庫量を保持。

### Amountクラス　---ViewModel

牛、豚、鳥それぞれに対応するAmountDataインスタンスを用意。

### SlectButton，FormItemクラス　---View

Amountを監視。変更があればUIを更新する。

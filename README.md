# OderCalculator

バイト先の肉発注をサポートするアプリ

## アーキテクチャ
Providerを採用

## Model

### AmountData
日付、休日かどうか、牛豚鳥の在庫数を保持。

### SalesData
平日の売り上げ、休日の売り上げを保持。

## ChangeNotifier

### Amount
Map<When,AmountData>を保持。
setterと、発注数を計算するorderメソッドを持つ。

### Sales
SalesDataを所持。
setterのみ持つ。

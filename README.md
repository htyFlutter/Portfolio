# math_café☕️
## アプリ概要
高校生の従姉妹だけに作った数学のサポートアプリです。

## 作ろうとした背景
従姉妹とチャットアプリで話す機会があり、<i>「どんな教科が苦手？」</i>と送ったら<i>「数学」</i>と返ってきました。<br>
さらに、<i>「どんな単元が苦手なの？」</i>と質問したところ、<i>「全部笑」</i>と返ってきたため、ポートフォリオ作成のチャンス/彼女の苦手克服になると思い、作ろうと決心しました。

## デザイン
* よくある数学アプリにある`青色系・緑色`系のデザインだと堅いデザインになってしまい、彼女の苦手意識が取れないと思ったので、女子高校生が好きなカフェでよく使われている`ピンク系・ブラウン系・抹茶系の色`を使い、苦手克服に努めました。

## 使用言語
* メイン: `Flutter（Dart）` - レイアウト実装・機能追加の使う構文など
* データベース: `SQLite（sqfliteパッケージ）` - 問題の進捗状況/正誤判定/解答率に使用
* 問題テンプレ: `JSON` - 問題のテンプレート（問題数/問題の単元/出題/選択肢/回答/問題のレベル/解説）

↓出題の例です。
```JSON
[
  {
   
    "id": 9,
    "category": "二次不等式",
    "question": "x^2 - 4x + 3 < 0の不等式を解いてください。",
    "options": [
      "1 < x < 3",
      "x < 1, 3 < x",
      "解なし",
      "(x - 3)(x - 1)"
    ],
    "answerIndex" : 0,
    "level": "applied",
    "explanation": "1. 左側を因数分解する x^2 - 6x + 8 < 0→x^2 - 6x + 8 = (x - 4)(x - 2) \n2. x = の形にする(x = 4, 2) \n3. 不等号の向きに注意する(「<」 はxが数字に囲まれる、「>」は数字がxに囲まれる) \n4. 不等号の向きに注意して答えを出す(example: 2 < x < 4)"
  },
]

```

## 使用したAI
* GoogleのAIモード
* Gemini
* Gemini NotebookLM

### 使用目的
Gemini NotebookLMにアプリの参考になりそうなウィジェットのソースを入れ、わからないところがあったら
NoteboolLMと連携したGemimi/GoogleのAIに聞きました。


## NotebookLMに入れたソース（一部）
- [Flutter documentation Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Dart API Docs](https://api.dart.dev/)
- [Flutter Official Youtube Channel](http://www.youtube.com/@flutterdev)

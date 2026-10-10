# math_café☕️
## アプリ概要
> **「数学がとても苦手な高校生の従姉妹だけのアプリ」**

## 作ろうとした背景
従姉妹とチャットアプリで話す機会があり、<i>「どんな教科が苦手？」</i>と送ったら<i>「数学」</i>と返ってきたやりとりがありました。<br>
さらに、<i>「どんな単元が苦手なの？」</i>と質問したところ、<i>「全部笑」</i>と彼女の返答が来たため、ポートフォリオ作成のチャンス/彼女の苦手克服になると思い、作ろうと決心しました。

## デザインについて
* 市販の数学アプリにある`青色系・緑色`系のデザインだと堅いデザインになってしまい、彼女の苦手意識が取れないと思ったので、女子高校生が好きなカフェでよく使われている`ピンク系・ブラウン系・抹茶系の色`を使い、苦手克服に努めました。

___

## 機能一覧
| 機能 | 内容 | 備考 |
| --- | --- | --- |
| タイマー | 従姉妹が集中しやすいよう15分のタイマーを作りました。 | |
| クイズ | ランダムで10問の4択式形式にしたことで、²,√, ±などの入力が難しい数学記号の入力を省略することで、ストレス軽減に努めました。 |  |
| チャット機能 | Flutter(Google製)と相性がいいGemini API(無料枠)を使い、学校での質問以外でも365日24時間わからないことがあったら聞けるようにしました。 |  |
| ライトモード/ダークモード | 夜中や暗闇の中でも学習しやすいよう、目に優しいダークモードを入れました。 ||


## 使用スタック/選んだ理由
| 技術/パッケージ | 用途 | 選定理由 |
| :--- | :--- | :--- |
| Flutter(Dart) | クロスプラットフォーム対応 | 従姉妹はAndroidを使っていますが、将来的にはiOS対応するようにするため。 |
| Isar Database | ローカルデータベース |  |
| google_fonts | フォント変更 | カフェで使用されそうなオシャレなフォントを使用。 |
|flutter_launcher_icons| ホームアイコン | AIで生成したカフェ風のアイコンをホームアイコンに設定。 |
| flutter_math_fork | 数学記号 | 数学記号(²や√など)をより見やすくしやすいするため。 |
| share_preferences |  |  |
| flutter_chat_ui | AIとのチャット機能のUI |  |




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

## フォルダ/ファイル構成




## 使用したAI
* Claude Code
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
- [Isar Tutorials](https://isar.dev/ja/tutorials/quickstart.html)

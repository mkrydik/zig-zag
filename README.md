# Zig Zag : Fizz Buzz in Zig

Fizz Buzz っぽいなにかを Zig 言語で実装してみました。


## 使い方

このプロジェクトは以下の環境で動作確認しました。

- macOS Monterey v12.4 : Zig v0.9.1 : Terminal.app

Zig でビルド・実行してみてください。

```bash
$ git clone https://github.com/mkrydik/zig-zag.git && cd "$(basename "$_" .git)"

# ソースを直接実行する
$ zig run ./src/main.zig
# ビルドして実行する
$ zig build run
# ビルドされたバイナリを実行する
$ zig build
$ ./zig-out/bin/zig-zag
```

- 実行例 (コンソール上で罫線が揃って見えるように調整しています)

```bash
$ zig build run
Zig Zag : Start

  1  │
  2  │
  3  └─┐  ->  Zig
  4      │
  5  ┌─┘  ->  Zag
  6  └─┐  ->  Zig
  7      │
  8      │
  9  ┌─┘  ->  Zig
 10  └─┐  ->  Zag
 11      │
 12  ┌─┘  ->  Zig
 13  │
 14  │
 15  └─┐  ->  Zig Zag
     ┌─┘
 16  │
... (中略) ...
 89  │
 90  └─┐  ->  Zig Zag
     ┌─┘
 91  │
 92  │
 93  └─┐  ->  Zig
 94      │
 95  ┌─┘  ->  Zag
 96  └─┐  ->  Zig
 97      │
 98      │
 99  ┌─┘  ->  Zig
100  └─┐  ->  Zag

Zig Zag : Finished
```

`1` から `100` までの数値が出力され、数値の隣で罫線が Zig Zag します。


## コーディング関連コマンド

```bash
# フォーマット
$ zig fmt ./

# テスト
$ zig test ./src/main.zig
```

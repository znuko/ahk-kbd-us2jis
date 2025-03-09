# ahk-kbd-us2jis

WindowsでキーボードレイアウトにJIS配列を設定している環境で、US配列キーボードを使うとき用のスクリプトです。

## できること

- US配列の印字通りに入力（shift+2で@など）
- 左／右ALT空打ちでIMEの英／かな入力の切り替え

## 環境

- Windows 11（多分それ以外のバージョンでも動く）
- AutoHotKey v2がインストール済み（任意）
  - 未インストールなら`.ahk`は直接実行できないので代わりに`.exe`の方を実行すればok
- OSのキーボードレイアウトがJIS配列で、接続するキーボードの配列がUS配列とする
  - 逆パターンは非対応

## 使い方

- OSのキーボードレイアウトをJIS配列に変更
  - windowsの設定＞時刻と言語＞言語と地域＞（日本語）＞オプション
  - キーボードレイアウトで「日本語キーボード (106/109キー)」を設定する
- IMEのキー割り当て
  - windowsの設定＞時刻と言語＞言語と地域＞（日本語）＞オプション＞Microsoft IME
  - キーとタッチのカスタマイズでキーの割り当てをオンにする
  - 無変換キーを「IME-オフ」、変換キーを「IME-オン」に設定する
- ahkスクリプトの実行
  - `alt-ime.ahk`と`us2jis.ahk`をDLして起動する
  - AutoHotKeyが未インストールなら[こちら](https://github.com/znuko/ahk-kbd-us2jis/releases/tag/v1.0)から`.exe`をDLして使う

## 参考

https://github.com/karakaram/alt-ime-ahk

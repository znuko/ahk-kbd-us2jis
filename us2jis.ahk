#Requires AutoHotkey v2.0
; OSがJIS配列の設定のときにUS配列キーボードを印字通りに使えるようにします。
; このスクリプトが起動中はJIS配列のキーボード入力が印字通りではなくなるので注意。

SC029::` ; SC029は「半角/全角」
+SC029::~
+2::@
+6::^
+7::&
+8::*
+9::(
+0::)
+-::_
^::=
+^::+

@::[
+@::Send("{{}")
[::]
+[::}
]::\ ; usの\キーはjisの]キーに対応している
+]::|

+;:::
SC028::Send("'") ; SC028は「:」
+SC028::Send('"')

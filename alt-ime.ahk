#Requires AutoHotkey v2.0
; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作

; 主要なキーを HotKey に設定し、何もせずパススルーする
; HotKeyに設定しないとAHKがフックせず、A_PriorHotkeyに登録されないため
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::{
  Return
}

; 上部メニューがアクティブになるのを抑制
*~LAlt::Send("{Blind}{vk07}")
*~RAlt::Send("{Blind}{vk07}")

; 左 Alt 空打ちで IME を OFF
LAlt up::{
  if (A_PriorHotkey == "*~LAlt")
  {
    Send "{vk1Dsc07B}" ; 無変換キー
  }
  Return
}

; 右 Alt 空打ちで IME を ON
RAlt up::{
  if (A_PriorHotkey == "*~RAlt")
  {
    Send "{vk1Csc079}" ; 変換キー
  }
  Return
}

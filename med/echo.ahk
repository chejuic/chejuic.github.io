#SingleInstance, force

Gui, echo_hotkey:New,+Resize  +MinSize640x +HwndGuiHwnd ,OPD_hotkey
Gui, Add, Text,, fattymil' + ENTER	=	Mildly increased brightness of liver echogenecity.
Gui, Add, Text,, fattymod' + ENTER	=	Moderately increased brightness of liver echogenecity.
Gui, Add, Text,, fattysev' + ENTER	=	Severely increased brightness of liver echogenecity.
Gui, Add, Text,, fine' + ENTER	=	Smooth surface with sharp angle. Echotexture fine.
Gui, Add, Text,, hetero' + ENTER	=	Heterogenous echotexture.
Gui, Add, Text,, hyper' + ENTER	=	Hyperechoic lesion without PAS, cm, at left/right lobe.
Gui, Add, Text,, hyperp' + ENTER	=	Hyperechoic lesion with PAS, cm, at left/right lobe.
Gui, Add, Text,, hypers' + ENTER	=	Hyperechoic lesions without PAS: the largest measured cm, at left/right lobe.
Gui, Add, Text,, hypersp' + ENTER	=	Hyperechoic lesions with PAS: the largest measured cm, at left/right lobe.
Gui, Add, Text,, hypo' + ENTER	=	Hypoechoic lesion, cm, at left/right lobe.
Gui, Add, Text,, hypos' + ENTER	=	Hypoechoic lesions: the largest measured cm, at left/right lobe.

Gui, Show
RETURN   ; === end of auto-execute section ===

GuiClose: 
    ExitApp
return

; 分號開頭是註解
;********************************************************************************************

;日期
::fattymil'::
  tmp = % (clipboard)
  clipboard := "Mildly increased brightness of liver echogenecity."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::fattymod'::
  tmp = % (clipboard)
  clipboard := "Moderately increased brightness of liver echogenecity."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::fattysev'::
  tmp = % (clipboard)
  clipboard := "Severely increased brightness of liver echogenecity."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::fine'::
  tmp = % (clipboard)
  clipboard := "Smooth surface with sharp angle. Echotexture fine."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::hetero'::
  tmp = % (clipboard)
  clipboard := "Heterogenous echotexture."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::hyper'::
  tmp = % (clipboard)
  clipboard := "Hyperechoic lesion without PAS, cm, at left/right lobe."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::hyperp'::
  tmp = % (clipboard)
  clipboard := "Hyperechoic lesion with PAS, cm, at left/right lobe."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::hypers'::
  tmp = % (clipboard)
  clipboard := "Hyperechoic lesions without PAS: the largest measured cm, at left/right lobe."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::hypersp'::
  tmp = % (clipboard)
  clipboard := "Hyperechoic lesions with PAS: the largest measured cm, at left/right lobe."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::hypo'::
  tmp = % (clipboard)
  clipboard := "Hypoechoic lesion, cm, at left/right lobe."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return

::hypos'::
  tmp = % (clipboard)
  clipboard := "Hypoechoic lesions: the largest measured cm, at left/right lobe."
  ClipWait
  Send, ^v
  clipboard := (tmp)
  return
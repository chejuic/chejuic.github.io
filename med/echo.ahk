#SingleInstance, force

Gui, echo_hotkey:New,+Resize +AlwaysOnTop  +MinSize480x +HwndGuiHwnd ,echo_hotkey
Gui, Add, Button, x5 y5 w100 h30 gButtonFattyMil, fattymil
Gui, Add, Button, x110 y5 w100 h30 gButtonFattyMod, fattymod
Gui, Add, Button, x215 y5 w100 h30 gButtonFattySev, fattysev
Gui, Add, Button, x5 y40 w100 h30 gButtonFine, fine
Gui, Add, Button, x110 y40 w100 h30 gButtonHetero, hetero
Gui, Add, Button, x215 y40 w100 h30 gButtonHyper, hyper
Gui, Add, Button, x320 y40 w100 h30 gButtonHypers, hypers
Gui, Add, Button, x5 y75 w100 h30 gButtonHyperP, hyperp
Gui, Add, Button, x110 y75 w100 h30 gButtonHypersP, hypersp
Gui, Add, Button, x215 y75 w100 h30 gButtonHypo, hypo
Gui, Add, Button, x320 y75 w100 h30 gButtonHypos, hypos
Gui, Add, Button, x5 y110 w100 h30 gButtonAn, an
Gui, Add, Button, x110 y110 w100 h30 gButtonAns, ans
Gui, Add, Button, x5 y145 w100 h30 gButtonPmask, Pmask
Gui, Add, Button, x110 y145 w100 h30 gButtonNs, Ns

Gui, Show
RETURN

ButtonFattyMil:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Mildly increased brightness of liver echogenecity."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonFattyMod:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Moderately increased brightness of liver echogenecity."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonFattySev:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Severely increased brightness of liver echogenecity."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return


ButtonFine:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Smooth surface with sharp angle. Echotexture fine."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonHetero:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Heterogenous echotexture."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonHyper:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Hyperechoic lesion without PAS, cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonHyperP:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Hyperechoic lesion with PAS, cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonHypers:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Hyperechoic lesions without PAS: the largest measured cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonHypersP:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  clipboard := "Hyperechoic lesions with PAS: the largest measured cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
  return

ButtonHypo:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  Clipboard := "Hypoechoic lesion, cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
return

ButtonHypos:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  Clipboard := "Hypoechoic lesions: the largest measured cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
return

ButtonAn:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  Clipboard := "Anechoic lesion, cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
return

ButtonAns:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  Clipboard := "Anechoic lesions: the largest measured cm, at left/right lobe."
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
return

ButtonPmask:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  Clipboard := "Partially masked by gas"
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
return

ButtonNs:
  Gui, Hide  ; hide the GUI
  tmp = % (clipboard)
  ClipWait
  Clipboard := "Normal size(s)"
  ClipWait
  Send, ^v
  ClipWait
  Send, {enter}
  clipboard := (tmp)
  Gui, Show, NoActivate  ; show the GUI again without activating it
return
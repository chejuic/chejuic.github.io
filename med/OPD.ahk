; 分號開頭是註解
;********************************************************************************************

;日期
::d'::
  d = %A_YYYY%/%A_MM%/%A_DD%
  Send, =={enter}%d%:{enter}
  return


;********************************************************************************************

LCtrl & 1::
; Create the array, initially empty:
Array := [] ; or Array := Array()

clipboard =
Send, ^c
ClipWait

; Write to the array:
Loop, parse, clipboard, `r,`n ; This loop retrieves each line from clipboard, one at a time.
{
    Array.Push(A_LoopField) ; Append this line to the array.
}

; Read from the array:
TG =0
TCHO =0
HDL =0
LDL =0
array1 := []
labitem := []
labvalue := []
for index, element in Array ; Enumeration is the recommended approach in most cases.
{
    array1 := StrSplit(element, ": ") ; 冒號前面是日期和項目名稱，後面是數值和單位
labitem[index] := SubStr(array1[1], 12) ; 前12碼是日期，之後是項目名稱
labvalue[index] := strsplit(array1[2],"   ")[1]
if (Instr(labitem[index],"TG")) {
TG = % labvalue[index]
}
if (Instr(labitem[index],"HDL")) {
HDL = % labvalue[index]
}
if (Instr(labitem[index],"Cholesterol")) {
TCHO = % labvalue[index]
}
;MsgBox % (labitem[index])
}
;MsgBox TG =  %TG%
;MsgBox HDL =  %HDL%
;MsgBox TCHO =  %TCHO%
;MsgBox % substr(array1[1], 1, 11) . "LDL: " . (TCHO-HDL-0.2*TG)
clipboard := clipboard . "`n" . substr(array1[1], 1, 11) . "LDL(calculated): " . (TCHO-HDL-0.2*TG)
ClipWait
Send, ^v
ClipWait
Return


;頸部理學檢查
::neck'::Neck ROM full, pain at{enter}Spurling- {enter}Lhermitt -{enter}Facet joint provocation:{enter}Stretch pain: {enter}Tenderness:


;理學檢查
::pe'::Head: Scalp: Normal{enter}Pupils: Isocoric{enter}Conjunctiva: Not Pale Sclera: Anicteric{enter}Neck: Supple Jugular Vein Engorgement: - Lymphadenopathy: - {enter}Chest: Symmetric expansion, Breath sound: Clear{enter}Heart: Regular Heart Beat, Murmur: -{enter}Abdomen: Soft, Flat, Tenderness(-){enter}Bowel sound: Normal{enter}Extremities: Normal

::ne'::Light Reflex: OK{enter}EOM: OK{enter}DTR upper: OK{enter}DTR lower: OK{enter}Muscle power: OK{enter}walk on heel and walk on toes: OK {enter}F-N-F: OK{enter}Romberg test and Tandem gait: negative{enter}

;系統回顧
::ros'::GENERAL:  No weight change, change in appetite, thirst, fever or chills.{enter}HEENT:  No headache or blurred vision.{enter}CARDIOPULMONARY:  No chest pain, palpitations or shortness of breath.{enter}GASTROINTESTINAL:  No anorexia, nausea or vomiting.{enter}GENITOURINARY:  No dysuria or pyuria.{enter}ENDOCRINE:  No goiter, lethargy or heat/cold intolerance.{enter}HEMATOLOGY/ONCOLOGY:  No pallor, bruising or bleeding.{enter}MUSCULOSKELETAL:  No change in strength. No swelling.{enter}NEUROLOGIC:  No headache or loss of consciousness.{enter}PSYCHIATRIC:  No change in personality, affect or depression.


;中風相關風險與建議
::stroke'::Stroke Risk Factor: {enter}HTN(-), DM(-), Dyslipidemia(-), Cardiovascular disease(-), Arrhythmia(-),{enter}Previous stroke(-), Smoking(-), Alcohol drinking(-){enter}{enter}1. Arrange brain MRI without contrast{enter}2. Keep Bokey 1# QD; consider adding Plavix(cash) for 3 weeks, then switch to Plavix only (Ref. CHANCE Trial. Circulation. 2015 Jul 7; 132(1):40-6.){enter}3. Oral PPI if needed{enter}4. Keep adequate hydration{enter}5. Keep BP < 220/120 mmHg and blood sugar < 180mg/dL{enter}6. Check HbA1C, lipid profile(T-CHO, LDL-C, HDL-C, TG), D-Dimer{enter}7. Arrange carotid duplex(without TCD) and transthoracic echocardiography{enter}8. Closely monitor neurological s/s for any new neurological deficit (ex: new cranial nerve deficits, downhill muscle power, impaired consciousness){enter}

;頭痛
::head'::headache: {enter}sudden(-), most severe ever(-), new onset(-), accelerating(-), postural(-), pulsatile tennitus(-), with systemic sx(-), with focal s/s(-), nuchal rigidity(-), temporal arteries swollen(-)


;********************************************************************************************

; 打開記事本
Alt & n:: 
clipboard =
Send, ^c
Send, ^c
Send, ^c
Sleep 50
Run, notepad.exe
Sleep 90
Send, ^v
Return


;搜尋診斷碼: Google Search for icd-10 codes
Alt & i:: 
clipboard =
Send, ^c
Send, ^c
Send, ^c
Sleep 50
StringReplace, clipboard, clipboard, %A_SPACE%, +, All
Run, https://www.google.com/search?q=%clipboard%+icd+10
Return


; uptodate search
Alt & u:: 
clipboard =
Send, ^c
Send, ^c
Send, ^c
Sleep 50
StringReplace, clipboard, clipboard, %A_SPACE%, +, All
Run, https://www.uptodate.com/contents/search?search=%clipboard%
Return


; 圖片蒐尋: Google Image Search for keywords
Alt & p:: 
clipboard =
Send, ^c
Send, ^c
Send, ^c
Sleep 50
StringReplace, clipboard, clipboard, %A_SPACE%, +, All
Run, https://www.google.com/search?tbm=isch&q=%clipboard%
Return


 



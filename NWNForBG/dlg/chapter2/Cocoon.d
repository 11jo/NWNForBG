//  ������ ����� � ������

BEGIN ~COCOON~

IF ~  AreaCheck("NW2902")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Druid1Free","NW2902",1)ClearAllActions()StartCutSceneMode()StartCutScene("Rescue")~ EXIT
  IF ~~ THEN REPLY @2 DO ~DestroySelf()~ EXIT
END


//  ������ ����� � ������

BEGIN ~COCOON~

IF ~  AreaCheck("NW2902")~ THEN BEGIN 0 // from:
  SAY ~���� ����� �� ����, � ��� ��������� �����-�� �������. ������ ���������� ��� ����������?~
  IF ~~ THEN REPLY ~��~ DO ~SetGlobal("Druid1Free","NW2902",1)ClearAllActions()StartCutSceneMode()StartCutScene("Rescue")~ EXIT
  IF ~~ THEN REPLY ~���, ����� �������� � ������.~ DO ~DestroySelf()~ EXIT
END


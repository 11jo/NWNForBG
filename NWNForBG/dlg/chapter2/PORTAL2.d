//  ������ � ���� ���� � ��� �����������

BEGIN ~PORTAL2~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~� ����� ����� ������� ����� ���������� ��������� ���� �����������. �� ������ ����� � ������?~
  IF ~~ THEN REPLY ~��~ DO ~SetGlobal("SriritPortal","GLOBAL",2)ClearAllActions()StartCutSceneMode()StartCutScene("ToWood")~ EXIT
  IF ~~ THEN REPLY ~���~ EXIT
END

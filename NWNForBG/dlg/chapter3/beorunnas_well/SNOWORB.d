// ������� ��������: ��� 2 ����, ������� ���

BEGIN ~SNOWORB~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~�� ������ ����� � ������� ���?~
  IF ~~ THEN REPLY ~��~ DO ~SaveGame(0)ClearAllActions()StartCutSceneMode()StartCutScene("ToOrb")~ EXIT
  IF ~~ THEN REPLY ~���~ EXIT
END


// ����� ��� ����������, ��������� �����

BEGIN ~NWMEPAR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~�����! � ���� ������... ��� � ����� � �������� � ����!~
  IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("GongDemo")~ EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY ~����� � �� ������� ����������������� ����������� ������ �� ������?~
  IF ~~ THEN REPLY ~��� ��� ��� �������.~ EXIT
  IF ~~ THEN REPLY ~������ ��� ���.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~������, ������ � ���������~
  IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("GongDemo")~ EXIT
END


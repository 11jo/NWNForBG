// ������ ����� ��������� ��������� �����
BEGIN ~ZOM1223E~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 4 // from:
  SAY ~�����, ���� ������, �� �� ������! ������� ������� �� ����! � ���� ���������� �����! �����!~ [GULNAN54]
  IF ~~ THEN DO ~Wait(1)Kill(Myself)~ EXIT
END


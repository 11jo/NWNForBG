// ������ ����� ��������� ��������� �����
BEGIN ~ZOM1223C~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 2 // from:
  SAY ~���� ��������� ���, �� ��������� ��� �����! ��� �������������! ���! �� ���� ����������� ���� �� ������, ����� ��� ���!~ [GULNAN52]
  IF ~~ THEN DO ~Wait(1)Kill(Myself)~ EXIT
END


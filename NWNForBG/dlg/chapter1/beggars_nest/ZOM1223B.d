// ������ ����� ��������� ��������� �����
BEGIN ~ZOM1223B~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY ~�� �������������� � ���� �������� ������! � ���� ���� �������! ���������� ����� ����� �������! � ������� ���!~ [GULNAN51]
  IF ~~ THEN DO ~Wait(1)Kill(Myself)~ EXIT
END


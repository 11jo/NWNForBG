// ������ ��� ������� �� ���� ����� ���������� ������� ����� ����� �����.

BEGIN ~NWTOWNG1~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~RandomWalk()~ EXIT
END


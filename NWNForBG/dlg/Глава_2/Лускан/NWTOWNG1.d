// ������ ��� ������� �� ���� ����� ���������� ������� ����� ����� �����.

BEGIN ~NWTOWNG1~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~��������! �������!!! ��� ��� �������?!~
  IF ~~ THEN DO ~RandomWalk()~ EXIT
END


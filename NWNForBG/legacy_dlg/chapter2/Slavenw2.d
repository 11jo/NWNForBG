// ��� �����������, ��� ����� - ���, 

BEGIN ~SLAVENW1~

IF ~  NumTimesTalkedTo(0)!Allegiance(Myself,ENEMY)~ THEN BEGIN 0 // from:
  SAY ~��� �� ���� ���������? ��� �? ��� ����� ����� ��� �����!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

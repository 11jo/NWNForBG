// ��������� ������, ����� ��� ����������� ������� 3, �����.

BEGIN ~GOLEM3~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��� ������ ���� ��������. � ������ ������ ����� ����� �����. ����, �����!~
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ������ �������� � ������ ������

BEGIN ~BART2E03~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY ~������ ���������� � �������. ��� �������� ����, ����� ������������. �� ��� ���, ������ ������?~
  IF ~~ THEN REPLY ~��.~ DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~���.~ EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY ~������ �������������, �� ����� �����. �� �� �� ������ �������� �� �������, ������ �� ���������. �� ��� ���, ������ ������?~
  IF ~~ THEN REPLY ~��.~ DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~���.~ EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY ~���� �� ������ ��������, ��� ����� ����. �� ��� ���, ������ ������?~
  IF ~~ THEN REPLY ~��.~ DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~���.~ EXIT
END

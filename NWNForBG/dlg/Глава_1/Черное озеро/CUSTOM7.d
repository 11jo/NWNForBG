BEGIN ~CUSTOM7~

IF ~Gender(LastTalkedToBy,FEMALE)
CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 2 // from:
  SAY ~���� ����� ���� ������, � � ��� �����������. �� � �������, ��� ��� �� ���� ����, ������.~
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,MALE)
CheckStatGT(LastTalkedToBy,14,CHR)~ THEN BEGIN 3 // from:
  SAY ~��-��... � ��� ������ ������ �����, �����������, �� ���� �� ��� �����������, � �� � ������������� ������� ����� � ����� �������� ��������, ��� ��....~
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,MALE)
CheckStatLT(LastTalkedToBy,15,CHR)
CheckStatGT(LastTalkedToBy,8,CHR)~ THEN BEGIN 4 // from:
  SAY ~� ���� ��� ���� �������, ���, � ��� ��� ��� ���. ����������, �� ���� ������� ���� � �������� ���������, ��������� ��� ���� ����������� ����������� ����� ����������. ��.~
  IF ~~ THEN EXIT
END

IF ~CheckStatLT(LastTalkedToBy,9,CHR)
Gender(LastTalkedToBy,MALE)~ THEN BEGIN 6 // from:
  SAY ~��� �� ��������! ��� ������ ����� ������� ������, ��� ��, ��������� ���������� � ����������� ��������?! ��!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Gender(LastTalkedToBy,FEMALE)
CheckStatGT(LastTalkedToBy,14,CHR)~ THEN BEGIN 2 // from:
  SAY ~���� ����� ���� ������, � � ��� �����������. ������� ��� ������ ��������, ����� ��� ���� �� ����������� ����� ��������.~
  IF ~~ THEN EXIT
END

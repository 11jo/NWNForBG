// ������ �������� � ������, 2-� ������� ���������� ���� ���� ������� ���������� ���������� �������, �� ��� ������ ��� ��������, ��� ���-�� ������� �� ���, ��� ��� �� ���������� ������� � ������������.

BEGIN ~NWCOURT1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~������, �������. ���� ���-������ �����?~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��! �����, ����� �� ������ �� ����� ���������, ���� � ������� ��������.~
  IF ~~ THEN REPLY ~���������� ��� �� ���� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ���������� ��� � �������?~ GOTO 5
  IF ~~ THEN REPLY ~�� �� ������, ��� �� ��� ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� � ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~��� � ���� ����� ����?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������� ��� ������?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~�� ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY ~��� ������ �������. �����, ���� ����� �������� � ���� ����.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~�� �������� �� �������, ��?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~��� �� �������� ��� �����.~ GOTO 16
  IF ~~ THEN REPLY ~������ ��������� ��� ��� ��� ������?~ GOTO 17
  IF ~~ THEN REPLY ~���������� ��� � ���� ����.~ GOTO 18
  IF ~~ THEN REPLY ~��������� ��� �������� � ��� ���-��� ���.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~�� �� �� �������, ���? ��� �� ������ �����?~
  IF ~~ THEN REPLY ~��-�� ���� ��� ��� ��������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 10
  IF ~~ THEN REPLY ~����� �������� ��������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ������.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY ~������? ��-��... ��� ����� ����������� ����� � �����, � �� ����� ���� ������? ����... ���� ������� ����������. � �� ����. ���� ������ ������ ���� ���-��, ��������, ���� ����� ���������� � ����� ��� �����... �������� � �����... ��������. �����, ����������, � ����� �������. ���� ���� ��������� �� ������� ���������. ��� �� �������� ����... ���� �� ����� ������ ������� ���, �� �� �������� ���-�� �����, �� ������.~
  IF ~~ THEN REPLY ~���������� ��� �� ���� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ���������� ��� � �������?~ GOTO 5
  IF ~~ THEN REPLY ~��� � ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~��� � ���� ����� ����?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY ~����� �����? ���... �������, �� � ���� � �������. ���� �� ���������� ������, ��� ����������� �� ���. � ��� ���, ��� �������� �����, ��� "�������������" ��� ����� ������ ���������... ���� �� � �� �����. �� ��, �� ���� ���� ������ �� ����� � ���� ��������.~
  IF ~~ THEN REPLY ~���������� ��� �� ���� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ���������� ��� � �������?~ GOTO 5
  IF ~~ THEN REPLY ~�� �� ������, ��� �� ��� ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� � ���� ����� ����?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY ~���� � ���� � �������. �� ��� �� ���������� ������, ��� ����������� �� ���, ���� �� ��� ����� � ����. � ��� ���, ��� �������� �����, ���� "�������������" ��� ����� ������ ���������. �� �� �� �� ������... �� ���, �� ���� ���� ������ �� ����� � ���� ��������.~
  IF ~~ THEN REPLY ~���������� ��� �� ���� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ���������� ��� � �������?~ GOTO 5
  IF ~~ THEN REPLY ~�� �� ������, ��� �� ��� ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� � ���� ����� �����?~ GOTO 7
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END


IF ~~ THEN BEGIN 9 // from: 1.2
  SAY ~��... �����-�� ���� ������ ������ ���������, ������� ��������� �������. ����� �� ����� ������, �� ��� ����� ������ �����, ����� ����������, ������� �� ��� ��������� � �����... ���� �� ������ ������ �����, �������.~
  IF ~~ THEN REPLY ~�� ������ ���-������ ��� �� ����?~ GOTO 13
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 10
  IF ~~ THEN REPLY ~����� �������� ��������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ������.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 1.2
  SAY ~������? ���, ��� ������ � ����� �� ��������. ���� �����, � �������, ����� �� ���� ������ �������, � ����� �� ������ �� �������. � ���� ���� ��� �������?~
  IF ~~ THEN REPLY ~��-�� ���� ��� ��� ��������?~ GOTO 9
  IF ~~ THEN REPLY ~����� �������� ��������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ������.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 1.2
  SAY ~��������, ��������� ������ �����. ��� ��������� ��������. ���� ������ ��������� ������� ��� �������... ����� ����� �����.~
  IF ~~ THEN REPLY ~��-�� ���� ��� ��� ��������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ������.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 1.2
  SAY ~��� �� ������ �����?~
  IF ~~ THEN REPLY ~���������� ��� �� ���� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� �� ������, ��� �� ��� ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� � ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~��� � ���� ����� ����?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 1.2
  SAY ~��... �������, ��� �� ���� ���� ����� �������� �������. ��� ����� ����������� � ����� ������� �� ������� ����� � �������, �� � ��� ���� � ��� ���� �����. � � ����.~
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 10
  IF ~~ THEN REPLY ~����� �������� ��������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ������.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 0.1
  SAY ~��� �. ��� �� ���������, ��� ����� ������, ��� ��� ���� �������� ��������� ����� �������. ������� ������ �������� ��� �������... � ���������. ��� ��� ����, ��������, �������� ����� ������. � ���� ������ ������ �������.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~��� �� �������� ��� �����.~ GOTO 16
  IF ~~ THEN REPLY ~������ ��������� ��� ��� ��� ������?~ GOTO 17
  IF ~~ THEN REPLY ~���������� ��� � ���� ����.~ GOTO 18
  IF ~~ THEN REPLY ~��������� ��� �������� � ��� ���-��� ���.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 0.1
  SAY ~��, �� ���, �� ���������? ��� �������� �� ���� ������, ��������, �� ��� ��� � ��� ������� ������ � ����. � ������ ���.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~�� �������� �� �������, ��?~ GOTO 15
  IF ~~ THEN REPLY ~������ ��������� ��� ��� ��� ������?~ GOTO 17
  IF ~~ THEN REPLY ~���������� ��� � ���� ����.~ GOTO 18
  IF ~~ THEN REPLY ~��������� ��� �������� � ��� ���-��� ���.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 0.1
  SAY ~������ ��� ������ �������� �����, ����� �� ��� ������. ��� ����� ��������� ���� ����� ����� ������������ � ��������� ���� ������ �� ���� ����.~
  IF ~~ THEN REPLY ~���� ��� �����?~ GOTO 20
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~�� �������� �� �������, ��?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~��� �� �������� ��� �����.~ GOTO 16
  IF ~~ THEN REPLY ~���������� ��� � ���� ����.~ GOTO 18
  IF ~~ THEN REPLY ~��������� ��� �������� � ��� ���-��� ���.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 0.1
  SAY ~��! ���� ���� ������ ����, ������. ���� ��� ��� ������ ��� ���� � ������������. �������, ����� ����� ����������... ��� �� ������ ���������.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~�� �������� �� �������, ��?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~��� �� �������� ��� �����.~ GOTO 16
  IF ~~ THEN REPLY ~������ ��������� ��� ��� ��� ������?~ GOTO 17
  IF ~~ THEN REPLY ~��������� ��� �������� � ��� ���-��� ���.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 0.1
  SAY ~������, ������, �����.~
  IF ~~ THEN REPLY ~�� ������ ���������� ��� � �������?~ GOTO 5
  IF ~~ THEN REPLY ~�� �� ������, ��� �� ��� ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� � ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~��� � ���� ����� ����?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 0.1
  SAY ~�����������, ������. � ����� ����� ����������, ������� ��������... ��� ����� ������ �����.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~�� �������� �� �������, ��?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~��� �� �������� ��� �����.~ GOTO 16
  IF ~~ THEN REPLY ~���������� ��� � ���� ����.~ GOTO 18
  IF ~~ THEN REPLY ~��������� ��� �������� � ��� ���-��� ���.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~�� ���-������ ������, �?~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~  RandomNum(2,1)~ THEN REPLY ~�� ��������.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~�� ��������.~ GOTO 3
END


// ��������� ������, ����� ��� ����������� ������� 2, �����.

BEGIN ~GOLEM2~

IF ~  NumTimesTalkedTo(0)!PartyHasItem("CreatorS")~ THEN BEGIN 0 // from:
  SAY ~����� ������� �����?~
  IF ~~ THEN REPLY ~��� �� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ��������� ������ ������. ����� �� �������. ���� ����� ������� ������ �� ����� ������.~
  IF ~~ THEN REPLY ~��� ����� ������ ����� ������ ������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~����� �� �������. ���� ����� ������� ������ �� ����� ������.~
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~�� �� �������� �� ����� ������. �� �� ������ ������.~
  IF ~~ THEN REPLY ~�� ���� ������� �������. � �������� ������ �������, � ��� ����� ������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~�� �� �������� ������ ������. �� �� ������ ������.~
  IF ~~ THEN REPLY ~��� � ���� ����� ������?~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~� ������ �� ���� �������� �� �������, ���.~
  IF ~~ THEN EXIT
END

IF ~  !Global("Door2Opened","MYAREA",1)OR(2)!NumTimesTalkedTo(0)PartyHasItem("CreatorS")~ THEN BEGIN 6 // from:
  SAY ~�� �� ������ ������, ���. ���� ����� ������� ������ �� ����� ������.~
  IF ~  PartyHasItem("CreatorS")~ THEN REPLY ~���� ��� ���� ��� ���.~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~�� �������� �� ����� ������. �� ������ ������.~
  IF ~~ THEN DO ~TakePartyItem("CreatorS")SetGlobal("Door2Opened","MYAREA",1)Unlock("Door2")OpenDoor("Door2")~ EXIT
END

IF ~  Global("Door2Opened","MYAREA",1)~ THEN BEGIN 8 // from:
  SAY ~����� �������. � ����� ���������.~
  IF ~~ THEN EXIT
END

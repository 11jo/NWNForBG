// ��������� ������, ����� ��� ����������� ������� 1, �����.

BEGIN ~GOLEM1~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����� ������� �����?~
  IF ~~ THEN REPLY ~��� �� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ��������� ������ ������. ����� �� �������.~
  IF ~~ THEN REPLY ~��� ��� �� ������ ������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~��� ����� �� ��� ���. ������ ������� ����� ������ ����.~
  IF ~~ THEN REPLY ~��� ����� ������ � ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~����� �� �������.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~��� ������.~ GOTO 8
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY ~�� �� �������� �� ����� ������. �� �� ������ �����. �� �� ��������.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~��� ������.~ GOTO 8
  IF ~~ THEN REPLY ~�� ���� ������� �������. � �������� ������ �������, � ��� ����� ������.~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY ~�� �� ��������� ������� ���������. ����, ������� ������� ���������, ������ ����� ������.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~��� ������.~ GOTO 8
  IF ~~ THEN REPLY ~��� � ���� ������� ����� ������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY ~� ������ �� ���� �������� �� �������, ���.~
  IF ~~ THEN EXIT
END

IF ~  !Global("Door1Opened","MYAREA",1)!NumTimesTalkedTo(0)~ THEN BEGIN 7 // from:
  SAY ~�� �� ������ ������, ���.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~��� ������.~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~�� ������ ������.~
  IF ~~ THEN DO ~TakePartyItem("CreatorR")SetGlobal("DoorOpened","MYAREA",1)Unlock("DoorX1")OpenDoor("DoorX1")~ EXIT
END

IF ~  Global("Door1Opened","MYAREA",1)~ THEN BEGIN 9 // from:
  SAY ~� ����� ���������.~
  IF ~~ THEN EXIT
END

// ������ - ����� ������� - 4 ���� - ������ ������������ �������  �������� 

// ������ ��������� ������ ����� ����. ��� ������� � �� ����������� ��������� � ��������. ����� �� ����� �� ������ ��� ������, ������, ��� ��� ����������.

// ��������� �� 4 ����: � ������� ������ ���� ������ ���� � � ��� �������� �����, ��� ����� ������� ������, ���������� ��������� 2 �������� � ��������. ������ ��� �������� � ������ �� �������� ������ � ������� �������� �������. � �������� ����� ��� �����. ���������� ����� � ��������� �������� �����. 

BEGIN ~2Q6EPOD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobaLT("GolemCreated","MYAREA",2)~ THEN BEGIN 0 // from:
  SAY ~��� ������ ������� �� �������, � �� ������ ����������� ������� ���������, � � ���� ������� ��� ����������. �� �����-���� ��������� �� ����������� ������ ���������� �������.~
  IF ~  Globa("GolemCreated","MYAREA",0)~ THEN REPLY ~����������� ����������.~ GOTO 1
  IF ~  Globa("GolemCreated","MYAREA",1)~ THEN REPLY ~����������� ����������.~ GOTO 2
  IF ~  PartyHasItem("Wandnw5")Globa("GolemCreated","MYAREA",0)~ THEN REPLY ~�������� ���� ���������� �������� � ����������.~ GOTO 3
  IF ~  PartyHasItem("Wandnw5")Globa("GolemCreated","MYAREA",1)~ THEN REPLY ~�������� ���� ���������� �������� � ����������.~ GOTO 4
  IF ~  PartyHasItem("Wandnw6")Globa("GolemCreated","MYAREA",0)~ THEN REPLY ~�������� ���� ������������ ������� � ����������.~ GOTO 5
  IF ~  PartyHasItem("Wandnw6")Globa("GolemCreated","MYAREA",1)~ THEN REPLY ~�������� ���� ������������ ������� � ����������.~ GOTO 6
  IF ~~ THEN REPLY ~��������� ������.~ GOTO 7
  IF ~~ THEN REPLY ~�������� ������ � �����.~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY ~��� ��� ������� � ����� ����������, ������ �����, ������������� ��� ����, ����� ��������� � ��� ���-������.~
  IF ~  PartyHasItem("Wandnw5")~ THEN REPLY ~�������� ���� ���������� �������� � ����������.~ GOTO 3
  IF ~  PartyHasItem("Wandnw6")~ THEN REPLY ~�������� ���� ������������ ������� � ����������.~ GOTO 5
  IF ~~ THEN REPLY ~��������� ������.~ GOTO 7
  IF ~~ THEN REPLY ~�������� ������ � �����.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 2.2
  SAY ~� ���� �� ���������� ������ �������� ��������� ����. ������ ����������� �����, ������ ��� ������� ����-�� ���.~
  IF ~  PartyHasItem("Wandnw5")~ THEN REPLY ~�������� ���� ���������� �������� � ����������.~ GOTO 4
  IF ~  PartyHasItem("Wandnw6")~ THEN REPLY ~�������� ���� ������������ ������� � ����������.~ GOTO 6
  IF ~~ THEN REPLY ~��������� ������.~ GOTO 7
  IF ~~ THEN REPLY ~�������� ������ � �����.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY ~���� ����� �������� �� ����� � ��������������� � ������ �������. ��� �������� ������ ���������, � ������ ������... ���� ���� ������ �� ����������.~
  IF ~~ THEN DO ~SetGloba("GolemCreated","MYAREA",1)TakePartyItem("Wandnw5")DestroyItem("Wandnw5")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY ~������ ���� ������ �� ����� ����� � ������ � ��������������� � ������ �������. ��� ����� �������� ����� ���� ���������, � ������ �������...~
  IF ~~ THEN DO ~SetGloba("GolemCreated","MYAREA",2)TakePartyItem("Wandnw5")DestroyItem("Wandnw5")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY ~���� ����� �������� �� ����� � ��������������� � ������ �������. ��� �������� ������ ���������, � ������ ������... ���� ���� ������ �� ����������.~
  IF ~~ THEN DO ~SetGloba("GolemCreated","MYAREA",1)TakePartyItem("Wandnw6")DestroyItem("Wandnw6")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY ~������ ���� ������ �� ����� ����� � ������ � ��������������� � ������ �������. ��� ����� �������� ����� ���� ���������, � ������ �������...~
  IF ~~ THEN DO ~SetGloba("GolemCreated","MYAREA",2)TakePartyItem("Wandnw6")DestroyItem("Wandnw6")~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.7
  SAY ~�� ��������� ������� �� ������, �� ��� ���� ���������� �� ���������� �������, ����������� �����������.~
  IF ~  Globa("GolemCreated","MYAREA",0)~ THEN REPLY ~����������� ����������.~ GOTO 1
  IF ~  Globa("GolemCreated","MYAREA",1)~ THEN REPLY ~����������� ����������.~ GOTO 2
  IF ~  PartyHasItem("Wandnw5")Globa("GolemCreated","MYAREA",0)~ THEN REPLY ~�������� ���� ���������� �������� � ����������.~ GOTO 3
  IF ~  PartyHasItem("Wandnw5")Globa("GolemCreated","MYAREA",1)~ THEN REPLY ~�������� ���� ���������� �������� � ����������.~ GOTO 4
  IF ~  PartyHasItem("Wandnw6")Globa("GolemCreated","MYAREA",0)~ THEN REPLY ~�������� ���� ������������ ������� � ����������.~ GOTO 5
  IF ~  PartyHasItem("Wandnw6")Globa("GolemCreated","MYAREA",1)~ THEN REPLY ~�������� ���� ������������ ������� � ����������.~ GOTO 6
  IF ~~ THEN REPLY ~�������� ������ � �����.~ GOTO 8
END


IF ~~ THEN BEGIN 8 // from: 1.8
  SAY ~�� ��������������� �� �������� �����������.~
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   GlobaGT("GolemCreated","MYAREA",1)~ THEN BEGIN 9 // from:
  SAY ~������ ��������� ������ ����� ����. ��� ������� � �� ����������� ��������� � ��������. ����� �� ����� �� ������ ��� ������, ������, ��� ��� ����������.~
  IF ~~ THEN EXIT
END


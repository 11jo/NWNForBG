// ������ -  ����� ������� - 3 ���� - ������ ������  ����� ���� ����� �������� ������. ���������, ���� �� �����....

BEGIN ~ABYSSPOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("AbyssPortalClosed","MYAREA",0)~ THEN BEGIN 10 // from:
  SAY ~������� ������, � ����� �������.~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   Global("AbyssPortalClosed","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~����� �� ������� �������� ��������, �� �������� �������� ����, ������� ��������, ����� �� ��������� �����. ���� ������� �������� ����� ��������� �����.~
  IF ~  OR(3)CheckStatGT(LastTalkedToBy(Myself),30,LORE)CheckStatGT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY ~����������� ������� �������.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),30,LORE)CheckStatLT(LastTalkedToBy(Myself),17,INT)CheckStatLT(LastTalkedToBy(Myself),17,WIS)~ THEN REPLY ~����������� ������� �������.~ GOTO 3
  IF ~~ THEN REPLY ~�������� � ����� �������~ GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 8
  IF ~~ THEN REPLY ~�������� ������� � �����.~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY ~��� �������, ��� ����� ������� �������� ���������, ���������� ������ �� ������� �����... ������ �����, � ���� ��� ������. ����������, ��� ��� ����� ������, ����� ������� ���� ������� ��� ���� � �������. ������, ������ �����, �������������, ���� � ���� ������� � ���� ����� ���������� ������ ���-�� ����� ���������. ������ ���� ������ ������� ����� ���� �� ������.~
  IF ~~ THEN REPLY ~�������� � ����� �������~ GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 8
  IF ~~ THEN REPLY ~�������� ������� � �����.~ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY ~����� ����� ���� ��������� �����-�� �������� �����. ��� ���, ��� �� �������� � ���������� ������ �������.~
  IF ~~ THEN REPLY ~�������� � ����� �������~ GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 8
  IF ~~ THEN REPLY ~�������� ������� � �����.~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY ~�� ���������� ��������� ������� � ������� ��� � �����. ��������, ������ ��������, ������� ����� ���� ����� ����. �����-�� ��� �� ��� ��� ������ ���� ����� � �������, �� �� ��� �� ��������. �� ����� ������ ���� ��, ��� ��� ��� ����� �����������.~
  IF ~  OR(3)CheckStatGT(LastTalkedToBy(Myself),30,LORE)CheckStatGT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY ~����������� ������� �������.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),30,LORE)CheckStatLT(LastTalkedToBy(Myself),17,INT)CheckStatLT(LastTalkedToBy(Myself),17,WIS)~ THEN REPLY ~����������� ������� �������.~ GOTO 3
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~�������� � ����� ���� �������.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~�������� � ����� ���� ����.~ GOTO 8
  IF ~~ THEN REPLY ~�������� ������� � �����.~ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY ~����� ��������� ���� ������� � ����� ��������. ��������� ������ ������� �������� ������ ��������...~
  IF ~~ THEN DO ~SetGlobal("QuasitEyeUsed","MYAREA",1)SetGlobal("AbyssPortalClosed","MYAREA",1)TakePartyItem("QUASGORE")DestroyItem("QUASGORE")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY ~����� ����� �� ������������ �� ���� �������. �� �� ��������, � ���������� �� ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.7
  SAY ~����� ��������� ���� ���� � ����� ��������. ��������� ������ ������� �������� ������ ��������...~
  IF ~~ THEN DO ~SetGlobal("ImpEyeUsed","MYAREA",1)SetGlobal("AbyssPortalClosed","MYAREA",1)TakePartyItem("IMPGORE")DestroyItem("IMPGORE")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.8
  SAY ~����� ����� �� ������������ �� ���� ����. �� �� ��������, � ���������� �� ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.9
  SAY ~�� ���������� �� �������, � � ������ ����� ����� ��������� � �����.~
  IF ~~ THEN EXIT
END


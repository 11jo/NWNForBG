// ����� ������������  ��� �������   ���� ����� ������. � ����� ������ ����������� ������, ��� ����� ����� ����������� ���� ��������� ����������� � ���������. ��� �� �����, �� ��� ���� ����� ������ �������� ����.  Global("MedicineTalkNWN","MYAREA",5) - ����� ������ ������

BEGIN ~NASCHER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����, ������ ���� �� - <CHARNAME>. ������ ���������� ��� ��� ����, ��� �� �������. ����� ��������, � ������ ���� ���� ������.~ [NASHE050]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY ~������� �����, ��� ����� ������������ �� �������� ���������, �������� ������ �� ������ ������������ � ��� �������� �����.~ [NASHE075]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 4
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~�������� �� ��������� ��� �� ����������� � ���� ���� ���������� ����������. � ��������� ������� �������, � �� ��������� �� �������, ��� ��� � ������� � ��� ����.~ [NASHE052]
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~������� ���, �� ���� ������ ����� ��������� ������, ������ � ������. ����������� �� ������ ��� ���������.~ [NASHE063]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 4
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~������� �� �����, ���� �� �� ������� � �� �������� ������������, ��������� ��� ����. ������� ��� ����� ������������ �� �������� ����� �������� ���.~ [NASHE064]
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY ~���� �� ���������� � �������� ������, �� ���� ������� � ��������� �������� �������?~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY ~���� �� ���������� � �������� ������, �� ���� ������� � ��������� �������� �������?~ GOTO 12
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~���� ��� ��� ����� ���������� � ���� ���������� ����������, ���� ������������ ���������� ��������������� � ���. ��� �������� ����������, ��������� ����������.~ [NASHE071]
  IF ~~ THEN REPLY ~�� ��� ��� ����� ������ ������.~ GOTO 13
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 4
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~�� ��������� ���� ���� ������. ����� ����������� ������ ��������, � ����� �� �������� ���������� �������. ������������, ��� ������ ����� �������� - ��� ���������.~ [NASHE053]
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 4
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from:
  SAY ~��, ����� �����, ���� �� ���������� ������ ������. �������������, ���� ������� �����.~ [NASHE054]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~��, ����� �����, ���� �� ���������� ������ ������. �������������, ���� ������� �����.~ [NASHE054]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY ~��������. ��������� ��� ��� ��� ������������� ��� �� ���, ��� �� ������� ��� ������������. ���� ��� ���� �� ������� ������� ��, ������� ��.~ [NASHE055]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from:
  SAY ~��������. ��������� ��� ��� ��� ������������� ��� �� ���, ��� �� ������� ��� ������������. ���� ��� ���� �� ������� ������� ��, ������� ��.~ [NASHE055]
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 11 // from:
  SAY ~�������? ��, � ���� ���� ������ � ��� ������������ � �����. �� ������� ���� ������ ��������� ��, ������, ������������, ��... ������ ��� ����������.~ [NASHE065]
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 12 // from:
  SAY ~� ���� �����-�� ���� ���-����� ���� � ���� ��������, �� ������ �� ����� ��������� ���. �������� - ��� �� � ��� �����. ������� ������ ��� ����.~ [NASHE069]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY ~�� ������ � ���� ����������� ����� ������, �������� � ��������? ��, ��� ��� ���������� ������ ������� ������ � �����. ������ ���� ��� ����������.~ [NASHE072]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 14 // from:
  SAY ~�, � �� �������� ���������� �� ����� ����������. ���, ����������, ������� ������������� ��� �� ������.~ [NASHE062]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY ~�, � �� �������� ���������� �� ����� ����������. ���, ����������, ������� ������������� ��� �� ������.~ [NASHE062]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY ~����� ���� �� ���������� ��������� ���, �� � ���� �������... ���� ���. �������� � ��� ������ ���� �� �����, � ������� �� ����������� ������. � ������ ���� ����� �����������, �������� ��� ����� ��������.~ [NASHE066]
  IF ~~ THEN REPLY ~���� ����������, �� �� ��, � ������ �� �������� ����� ����.~ GOTO 17
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 17 // from:
  SAY ~���, ������ ���������. ��� ����� ����� ���������� � �����, ���� �� ��� ����� � ������� �� ����, ��� �����-�� ������ ���������...~ [NASHE067]
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY ~(���) ��, �����, ������� � ����� ������� ������ ������ �������, �� � ���� ���� ����� ������������, �... � �� ����� ��� �����������.~ [NASHE068]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 19 // from:
  SAY ~��� �� ����� ��������� � �������, ������� ��������� ��� ���� �� ������. ��� ���� �����, ����� ���� ������������ ��� �����������, � �������, ��� �� ��� �������� ��� ���.~ [NASHE073]
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY ~� ������ ��� ����, ��� ������ ���� �����, ��������� ���� ������, � ������ ��� ����, ����� ��� ������� ������� �������. ����� ��������� ����� � ��� � �����.~ [NASHE074]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 4
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 21 // from:
  SAY ~� ���� ������� ��� �������, �� ������� ��� ����� ������. ��� ����� ���������� �� ����� ����������, ����� �� ������ ������ ���������.~ [NASHE077]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 4
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",0)~ THEN BEGIN 22 // from:
  SAY ~�������������! ��� �������, ��������� �� ���� ��������, � ��� ������������ �������� � ��, ��� �� ���� ���� ������� ������?! ���-�� ���������� ���������� �� ��� �������!~ [NASHE078]
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY ~��, <CHARNAME>, ������ �������� ������� � ������. �� ������� �������� ��� � ����������� ����������! � � ������� ����!~ [NASHE079]
  IF ~~ THEN REPLY ~������, ��� ������ �������� ����������. � �� ���� ��� ��������?~ GOTO 24
  IF ~~ THEN REPLY ~��� �� ������ ������� �� ������ ����, ��� ������ ������?~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from:
  SAY ~�� ����, ��� � ������� �� ����� ������. ���� ������ ��� ������ ��� � ������ ������, �� ��� ��������� ��������� ������� �� ���... ������ ������ ����...~ [NASHE080]
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from:
  SAY ~��� �������� �������� ����� �����. ���� �� �� ������ ���� ���������� ����������, ��� ���� ������� ���������. ����� ���� �� ����� ��� ���������, �� � ���� ��� �� �������� ���������� �������� ��������.~ [NASHE090]
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from:
  SAY ~� ��� ���� ����������, ��� ���� ��� �������������, ��� ��� ���-�� ����� ��������, �� � ���� � ������ �� ������������, ��� ���� �� ��� ������� ������������� ����, ����� �� �������� ��...~ [NASHE081]
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from:
  SAY ~��� ���� ����������� �����������. � � ����� � ������� ����������. � ������ ��� ���������, ������� ���� �������� � ������... ��� ��� �������.~ [NASHE091]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from:
  SAY ~ ��� ���������� ��������� ������ ����� ��������. ��, ����������, �����, ����� �� ��������, �� ��� ����� - ����� � �� ���� ������.~ [NASHE082]
  IF ~~ THEN REPLY ~������� ����� �����?~ GOTO 30
  IF ~~ THEN REPLY ~��� ��� �� ����, ������� ������ ����� ������� �� ���?~ GOTO 31
  IF ~~ THEN REPLY ~��� �� ������ ������� �� ������ ����, ��� ������ ������?~ GOTO 25
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from:
  SAY ~� ������ ������ �� �������. ���� ������ ��� ������� � ���� ���������, ��� ������� ������ � ��������, � ������� ���������� �� �������� ���� �����. ����� ��������� �����.~ [NASHE092]
  IF ~~ THEN REPLY ~����� ��� ���� �� ��������?~ GOTO 33
  IF ~~ THEN REPLY ~� ��� ������ �������� ������? ���� � �� ���� �������� ������������.~ GOTO 34
  IF ~~ THEN REPLY ~������, ��� ������ �������� ����������. � �� ���� ��� ��������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from:
  SAY ~ ������ ����������� �������� �����, ��� � ��� ��� ���������, �� ��� ����� �����, ������ ��� ���������, ������ �� ��� ����������� ���� ��������� ���������!~ [NASHE083]
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 31 // from:
  SAY ~ �� ������ ������ ��� ��������� ��� �������� ���������, ������� ��������� ������������� �� ����� ������. �����, ���� ������ ��� ����������, �� � ���, ������ ����, ����.~ [NASHE086]
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 32 // from:
  SAY ~����� �������, ���� ������ ���������� ���� ������. ������������... *���* ����� ����������!~ [NASHE089]
  IF ~~ THEN DO ~SetGlobal("Blanc2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY ~� �� ����, ����� ��� ������������ ��������� �� ��������, �� ���� ��� ������� ������ ���-��� �� ������ �� ��� ���� ������� � ����.~ [NASHE093]
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 37
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 38
END

IF ~~ THEN BEGIN 34 // from:
  SAY ~�����������  - ��� ������� �����, �� ����� �������� ����� ����� ������ ��������. �������� ��������� ��������������. �� ����� ����� ������ �����, ���������� �� ���.~ [NASHE098]
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 35 // from:
  SAY ~ � � ��� �� ��� ��� ��� ���������... ������ ����� �� ��� �������, ��� ��� ������, ������ �����, ������ ���� ������ ���������. ����� ������� ���.~ [NASHE084]
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 36 // from:
  SAY ~ � ����� ���������� �������� ���� ���������, � ��������� ������, ���� �� ���-���� ������ ������� ��� ����. ��� �� � ������ ����� ������ �������.~ [NASHE087]
  IF ~~ THEN REPLY ~������� ����� �����?~ GOTO 30
  IF ~~ THEN REPLY ~��� �� ������ ������� �� ������ ����, ��� ������ ������?~ GOTO 25
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 37 // from:
  SAY ~�� ���� ���� ����, ��� ��� ������ ��� ������. ����� �������� ��� ������� ����������. �� ������ ������, �� ��������� ���������� � �������� �������� ������ �������.~ [NASHE094]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 38 // from:
  SAY ~��� ���������, ��� ����� �������� ���������� �� ������ �����. ����� ����� ������� ������ � �������� ����������. ��� ������ ������.~ [NASHE095]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY ~��� �� ����� ������������ � ���������� �����������. ������ �� �� ���� ��� ������, ������ �������� �� ������� ����� ���, ��� ��� � ��� ��������� ��� ��������������.~ [NASHE099]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from:
  SAY ~ ��� ������ � ���� ����� ��������� - ��� ������ � ���� ��� ����� ��������� - ����� ������� ����� ������, ��� ������� � ��� ������ ����������, � ��� ��� ������� ���������.~ [NASHE085]
  IF ~~ THEN REPLY ~��� ��� �� ����, ������� ������ ����� ������� �� ���?~ GOTO 31
  IF ~~ THEN REPLY ~��� �� ������ ������� �� ������ ����, ��� ������ ������?~ GOTO 25
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 41 // from:
  SAY ~������ � ������ - ������� �����. � �� ���� ������ � ���, ��� ������ ������, ��, ��������, �� �� ��������, ��������� ������ ����� ���������� �������, ��� ������������, ��� �� ��������.~ [NASHE096]
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42 // from:
  SAY ~���� �� �� ����������� ��� ���������� ������ ����������, � �� �����, ��� ��� ���������� ������������ ��� ����. ������ �����, ��� ������ ���������. �����, ��� �� �����.~ [NASHE100]
  IF ~~ THEN REPLY ~����� ��� ���� �� ��������?~ GOTO 33
  IF ~~ THEN REPLY ~� ��� ������ �������� ������? ���� � �� ���� �������� ������������.~ GOTO 34
  IF ~~ THEN REPLY ~������, ��� ������ �������� ����������. � �� ���� ��� ��������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

IF ~~ THEN BEGIN 43 // from:
  SAY ~����� ������ ��� ��� ������, � ������� ���� ������? ���� � �� ��� ����� �� ���� �� ��� ������������. �����, ���� ���� - ��� ��������� ����.~ [NASHE97]
  IF ~~ THEN REPLY ~����� ��� ���� �� ��������?~ GOTO 33
  IF ~~ THEN REPLY ~� ��� ������ �������� ������? ���� � �� ���� �������� ������������.~ GOTO 34
  IF ~~ THEN REPLY ~������, ��� ������ �������� ����������. � �� ���� ��� ��������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",1)~ THEN BEGIN 44 // from:
  SAY ~��� ��� ������� ����, ������� ������ ���� ��� ����, ����� ���� ��������� � ����� � ��������! �������� �������! � �������! � ����� ��� ���������!~ [NASHE101]
  IF ~~ THEN REPLY ~������, ��� ������ �������� ����������. � �� ���� ��� ��������?~ GOTO 24
  IF ~~ THEN REPLY ~��� �� ������ ������� �� ������ ����, ��� ������ ������?~ GOTO 25
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 32
END


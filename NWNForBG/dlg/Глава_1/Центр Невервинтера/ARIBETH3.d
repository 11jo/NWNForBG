// ����� ������������  ��� �������   ������ ���� ������ - ���� ���������� ������� � �����������������, ���� ���, �������, ������ ��������� ������� ���, ��� �������� ��-�� ����. Global("MedicineTalkNWN","MYAREA",5) - ����� ������ ������

BEGIN ~ARIBETH3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��� ������������, <CHARNAME>. ������������� � ������� ���� ������ �����. ���� ������ �� ��������, ��� ����� ��������� ����� � ��� ����� ���������.~ [ARIBE170]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY ~����� �������, ��� �� ��������� ��������� ��� ����������� �� ��� �������, � ������ ������ ���� ����, ��� <MALEFEMALE>, ����� ���, ����� ����������� ������ � ��������� �������.~ [ARIBE171]
  IF ~~ THEN REPLY ~��� ����� ���-�� �������? ��� ������ �����?~ GOTO 2
  IF ~~ THEN REPLY ~������, ��� ��� ��� ����� �����������. ����� � ������ �������?~ GOTO 3
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~��� �� ����� �� � ��� ������������. ��������� ��� �� ����� ������ ������������, ������ ���� ������ �� ��������. ����� ����� � ������� ����� ��������.~ [ARIBE172]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~����� ���������� ��� �� ����. �� ������� ����� ����� ������, ����� ������ ����������.~ [ARIBE213]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~���� ��� �� ������ ������������ ��� ���. �� ������ ������ ����� ����������������, � �����, ��������� ���� �� ����� ���������.~ [ARIBE173]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~� ����. ���� ��������� ����� ����� �������������. ���� ����� �������, �� �� ������. ������ ��� ����� �������� ����� ������� ������.~ [ARIBE174]
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~� �������� ���������. �� ������ �� ����� ���-�� ����������?~ [ARIBE177]
  IF ~~ THEN REPLY ~��� �������� � ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ����� ��������� ���������?~ GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~��� ������ ��������� �������� � ��� � �����, �� ������ ��������� ������ ��� ����� ������� ������� ��� ���� �����.~ [ARIBE186]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY ~����������, ��� � ���� ����� �� ��� ����������, �� � ������ �� ��� �������, ����� �����.~ [ARIBE194]
  IF ~~ THEN REPLY ~��� �������� ���� �����?~ GOTO 15
  IF ~~ THEN REPLY ~���� ������ � ������� ���-������ ����������?~ GOTO 16
  IF ~~ THEN REPLY ~���� ��������� � �������� ������ ���������?~ GOTO 17
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 9 // from: 4.5
  SAY ~��, �����, ����� ��� ���������� ������. �� �� ����� ����������, � ��� �� ������. ������ �������� ����������.~ [ARIBE203]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY ~��, �� �������. ��� ����� ����� ������ ����������� � ��� ��� ������� ���������� ��� ����������. ��� ������� ������.~ [ARIBE204]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~�� ���� �� ������� � �������, �� �� ����� ��� ��� ����������, � ����� �� �� ���������� ��� ����������� � �� ���������� ����� ���� ���������.~ [ARIBE175]
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~��, ��������� �� ����� ���������� ������ ��� ������ �������������. �� ��������� ������� ��� ������� �������������� ��������� ����������.~ [ARIBE178]
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~����, �� ����������� ��������� �������. ���� �� ���� �������� ��������� ����� �� ��������������, ����� ��� ����� ���������.~  [ARIBE183]
  IF ~~ THEN REPLY ~��� �������� � ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY ~�� ��� ����������� ��������� �����, ��� ��� � ������ ������� �� �������� �������� �������� �������� ����, ���������� �� ���������. �������, ���... ��... �����, �� ��������� �� �������� �����.~ [ARIBE187]
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY ~��� ��� ���������, ������? ������� ���.~ GOTO 22
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY ~��� ��� ���������, ������? ������� ���.~ GOTO 23
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY ~� ����, ��� � ��. ���������� ���, ��� ��� ���������.~ GOTO 24
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 15// from: 8.1
  SAY ~��� ������������� ����� �������� �� ���� � ���� ������. �� ���������, ����� ��� ������� ������, � ��������� �� ����������� � ����� ��������� ���������� ��� ��������.~ [ARIBE195]
  IF ~~ THEN REPLY ~���� ������ � ������� ���-������ ����������?~ GOTO 16
  IF ~~ THEN REPLY ~���� ��������� � �������� ������ ���������?~ GOTO 17
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 16// from: 8.2
  SAY ~��� ���������, �� ���������� �� ���� ������ � ���. �� ������ ����� ���� ��������� ����� �������. ��� ���������� �������� �� ����� �����������.~ [ARIBE196]
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 17// from: 8.3
  SAY ~������� ����... �������, � ���� ����������� ������� �� ��� �������. ����� ����, ��� � �������� ����� �� � ��� �������������.~ [ARIBE199]
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 18// from: 8.4
  SAY ~��� ���������. ��� �� �� ������ �������� �� ����?~ [ARIBE184]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY ~��� ����� ���������� � ����������. �����, � ������� �� ��� �����, ��� ������� � ���, ��� ���������� ��������.~ [ARIBE211]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1
  SAY ~������ �������, � ����� �����, �� � �� ������� ����� ��������� ���. ���� �� �������� �����.~ [ARIBE176]
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 12.1
  SAY ~������, ������ � � ��� ������ ������ ������ �������� ����������, ��� ������ ������������. ���� ��� ������� ������, ��� ����� ��������� ����� � ��� ����� ���������.~ [ARIBE179]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 14.1
  SAY ~�� ����� ������ � ����, ��... � �� ���� �� ������������ � ������������ ����. ��� ������� ������� ���� ����� ������������.~ [ARIBE188]
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 23 // from: 14.2
  SAY ~������ �� ������ ���������� ����� �������� � ����� �����. ��� �������. ����� ������ �������� �� ���� �� �����������.~ [ARIBE191]
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 14.3
  SAY ~���������, ������� �� �� ������? �� ������ ������������ �������� �������� �����. �����, �� ���� ��� ������?~ [ARIBE193]
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 25// from: 16.1
  SAY ~���� �� ������, ��� �������� �������������. ���� �� ���������, ��� �������� �������������. ��������, ������� �� ������, ���������� � ��������� ����������, ������� �� �����.~ [ARIBE197]
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 26// from: 17.1
  SAY ~� �������, ������ �� ��������� ����� ������� �� �������, �� �� ���� ��������� ��� ��. � ����, ��� ������ ����, �� ���� �� ����� ����������� � �����.~ [ARIBE200]
  IF ~~ THEN REPLY ~��� �������� ���� �����?~ GOTO 15
  IF ~~ THEN REPLY ~���� ������ � ������� ���-������ ����������?~ GOTO 16
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 
  SAY ~��, �����, ����� ��� ���������� ������. �� �� ����� ����������, � ��� �� ������. ������ �������� ����������.~ [ARIBE203]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY ~��, �� �������. ��� ����� ����� ������ ����������� � ��� ��� ������� ���������� ��� ����������. ��� ������� ������.~ [ARIBE204]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 21.1
  SAY ~��� ������ ������� ��� ����� ������, ��� ���� ������ �������� ���. �����, � ���� �� ����� ����������� ����� ��� ����.~ [ARIBE180]
  IF ~~ THEN REPLY ~�����, �� ������ ������ ��������� �������.~ GOTO 34
  IF ~~ THEN REPLY ~��� ����� ��������� ���������?~ GOTO 13
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY ~� ��� ���� ���������. ���������� � ������ ����������. ����� ��� ����������, ����� ������� ����� ����������, � � ����������, ��� ��� ������� ����-�� �����.~ [ARIBE189]
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY ~����, ���-������ ���? ���� �� ��� �� ���������� � ����������, �� ������ ����� �����. ��� ���� ��� ���������.~ [ARIBE192]
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY ~�������, �� ����������� ��� ��� ���������� �������, ��� ��� � �� ���� ������������ �������� ���. ������ ����� ��������� ��� ����������, ��� ��� �� ����������� ���� ������-�� ��������.~ [ARIBE198]
  IF ~~ THEN REPLY ~��� �������� ���� �����?~ GOTO 15
  IF ~~ THEN REPLY ~���� ��������� � �������� ������ ���������?~ GOTO 17
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY ~��� ����� ���������� � ����������. �����, � ������� �� ��� �����, ��� ������� � ���, ��� ���������� ��������.~ [ARIBE211]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.1
  SAY ~��, � ���� ����� �����������. ��... ������ �����. �� ����� �������, ��� ���-�� ���������� ������ ����, �� �� �� ����� � �����������, ��� �� ������ ��� ����� �� ����� �������.~ [ARIBE181]
  IF ~~ THEN REPLY ~��� ����� ��������� ���������?~ GOTO 13
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

IF ~~ THEN BEGIN 35 // from: 30.1
  SAY ~(���) �� ������� ��� ��� ������������������, ����� ��������� ����� ������. ��� ���������� ����, � �� ������ �� ���� ��������� ���.~ [ARIBE190]
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 36 // from:
  SAY ~������������ ��� ���, <CHARNEME. � ���� �������� ������� ��� ���������, �� ��� ������ �� ������������ �� �����, �� ���������� ������ ���������.~ [ARIBE216]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �������, ��� �� ������� ������� ����� �������� ���������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~������ ��� ����� ������?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 28
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",0)~ THEN BEGIN 37 // from:
  SAY ~������, ������� � ������, ���� � ��� ���� ������� ��� ��������! ������� ���������! �������� ������� �... � ������� ����. �����, ��� ����������� ���... � �� ����.~ [ARIBE217]
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY ~�������������? ��� ����� �������� ������� �������, ��� ����������� ��, ���... ��� �� ��� ����� ��� ���� ����.~ [ARIBE218]
  IF ~~ THEN REPLY ~���� ��������, ��� ��� ��. �� ������ ����������� �������.~ GOTO 39
  IF ~~ THEN REPLY ~������ ����������� �� ��������? ����� ���������, ��� �� ���������� ���������� ���.~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~�� ������ �������� ���! ���� ���� �� �����! �� ������! ��� ��������! ��... ��... ���� �� �������...~ [ARIBE219]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY ~� ��� �� �����? ���� � �� ��������� � �����... ������ ��� �� ����� ��������... ������, �� ������ ������ � ��������. ���� �� ������� ��� �����!~ [ARIBE232]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY ~���� ����� ��� �� �������. ��� �� ������ �������� ���������, � ��� ������� ��������� � ���������, � ���� ���, ��� ������� ���... �... � �� ����� ��� ��������... �� �����...~ [ARIBE220]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY ~��������... ��������, ���� ������� �������, ��� ����� �� ��� �����. ���� �������, �������� ��� � ����. ������� � �������, � ����� ��... � �� ����... � �� ����, ��� ������ ����� ������.~ [ARIBE221]
  IF ~~ THEN REPLY ~��� �� ���������� � ��������?~ GOTO 43
  IF ~~ THEN REPLY ~��� �� ����������� ������?~ GOTO 44
  IF ~~ THEN REPLY ~���� ����� ���� ������?~ GOTO 45
  IF ~~ THEN REPLY ~���� ������ � ��� �������� ���������, �� ��� �� ���������?~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY ~�... � �� ����. ���� ��������, ��� �� ������ � ���������� ������, �������� �� �����-���� ���������... � �� ����...~ [ARIBE222]
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY ~� ����... � ���� ������� ������ ��������, ������� �����, �� �� ������ ������� ���� ���������� ���� ����� ��������� �����. ��� �������� ����������� � ��������.~ [ARIBE225]
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 45 // from: 42.3
  SAY ~� �� ����... ��� ����� � �� �������. � �� ���� ������ ������ ����� �������. �����, �� ����� � �� �����, ������ ������ �� ��� � ��� ��� ���-��������.~ [ARIBE227]
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 46 // from: 42.4
  SAY ~� �� ����. �����, ������ ���� ��. ��� ������� �����������. �� ������ �� ����� ������... ���� �� � ��� �������� ����... ��� ��� ����� ������ ����.~ [ARIBE230]
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY ~�� �������� ������... �� ������� ���������. ���� �� ������, ����� �� �������... ����� ����������. ����� ����� ������ �� �� ��, ��� ��� ����� ����� ���������?~ [ARIBE223]
  IF ~~ THEN REPLY ~��� �� ����������� ������?~ GOTO 44
  IF ~~ THEN REPLY ~���� ����� ���� ������?~ GOTO 45
  IF ~~ THEN REPLY ~���� ������ � ��� �������� ���������, �� ��� �� ���������?~ GOTO 46
  IF ~~ THEN REPLY ~� ������ �� ���� ���. �����, ��� ������� �������.~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.4
  SAY ~��������� ��������� ����������� � ������ �����, ��� ��� ��� �������� ��������� ���. �����, ���� ������ �� ��������!~ [ARIBE224]
  IF ~~ THEN DO ~SetGlobal("ToHelmTempleNWN","GLOBAL",1)SetGlobal("Blanc2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1
  SAY ~��� � ���������� ���-�� ��� ��������... � �� ����� ������ ��, ��� ������ ����� ������� �������... �� � ����� ��������� ���... ��������...~ [ARIBE226]
  IF ~~ THEN REPLY ~��� �� ���������� � ��������?~ GOTO 43
  IF ~~ THEN REPLY ~���� ����� ���� ������?~ GOTO 45
  IF ~~ THEN REPLY ~���� ������ � ��� �������� ���������, �� ��� �� ���������?~ GOTO 46
  IF ~~ THEN REPLY ~� ������ �� ���� ���. �����, ��� ������� �������.~ GOTO 48
END

IF ~~ THEN BEGIN 50 // from: 45.1
  SAY ~������ ���������, ��� �� ������ �� ����� ������ �� �������, �� �� ����, ��� ��� ����� ���� �������. ��� �� �� ����� ����������� � ����� ��������.~ [ARIBE228]
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY ~��� �������� ���������������... ������, ������ ������ ��� ���, ����� �������������� ����... �� �����?! ������� ����� ������... � ������ ��� � �����?~ [ARIBE231]
  IF ~~ THEN REPLY ~��� �� ���������� � ��������?~ GOTO 43
  IF ~~ THEN REPLY ~��� �� ����������� ������?~ GOTO 44
  IF ~~ THEN REPLY ~���� ����� ���� ������?~ GOTO 45
  IF ~~ THEN REPLY ~� ������ �� ���� ���. �����, ��� ������� �������.~ GOTO 48
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY ~���� �� �� ��� ���� ������, ��� ����� ����� �������. �� �����, ��� �� ������ ����-������ �� ���. ������ ���������.~ [ARIBE229]
  IF ~~ THEN REPLY ~��� �� ���������� � ��������?~ GOTO 43
  IF ~~ THEN REPLY ~��� �� ����������� ������?~ GOTO 44
  IF ~~ THEN REPLY ~���� ������ � ��� �������� ���������, �� ��� �� ���������?~ GOTO 46
  IF ~~ THEN REPLY ~� ������ �� ���� ���. �����, ��� ������� �������.~ GOTO 48
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",1)~ THEN BEGIN 53 // from:
  SAY ~���� �������! �� ������ ����� �������! � ���� ���� ���������� ������ ��������, �� ��� ����� ����������! �����, ��� ������� ����� �� ������...~ [ARIBE233]
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY ~�����, ������� ������ � ��� ���, ��� �� ������... �����, ��� �������, ������ ��� ����� ���������... �����, � �� ����������...~ [ARIBE234]
  IF ~~ THEN REPLY ~��� �� ���������� � ��������?~ GOTO 43
  IF ~~ THEN REPLY ~��� �� ����������� ������?~ GOTO 44
  IF ~~ THEN REPLY ~���� ����� ���� ������?~ GOTO 45
  IF ~~ THEN REPLY ~� ������ �� ���� ���. �����, ��� ������� �������.~ GOTO 48
END


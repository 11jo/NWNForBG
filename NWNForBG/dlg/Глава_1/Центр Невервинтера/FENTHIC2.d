// ����� ������������  ��� �������   ������ ������. �� ��������� ������, ��� ��� ����� ��������� ����� � ���� ����� ������������ ���������. �� ������ ��������� �������.  Global("MedicineTalkNWN","MYAREA",5) - ����� ������ ������

BEGIN ~FENTHIC2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~������������! ������� ������� ����, �� ��� ��? � ���... ��� ��� ����� ����������. ��� ��������� ����� ������� �� �������� ����� ����������� �������.~ [FENTH190]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY ~�� ����� ������������ ������� � ��������� ������� � ��� ���������-��������� ��������������� �� �������� ��������� ����. ������ �� ������ ���������� ��������� � ��� ������ � �����.~
  IF ~~ THEN REPLY ~��� ���� ������� �������� � �������.~ GOTO 2
  IF ~~ THEN REPLY ~������ ������� ��������� �� ����������. ����������� � ������.~ GOTO 3
  IF ~~ THEN REPLY ~����� ��� �������� ������ ���. ������ ����� ������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~��, � ����, ��� ��� ����� ��������, � ��� � ����, ��� ������ ����� ��� �����������. ���� ������ ��... ��... �����, ����� � ��� �� ������, �� ��� ����� �����.~
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // ������, ������, ������ �� ����� ��� ����� ����������. ������ �� ������ ����� ���, ��� ��������� ��.
  IF ~  !See("Desther")~ THEN GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~� �������, �� �� ������ ������� ������. � �� ������, ��� �� �������, ����� ������ ���� �� ������ � ����... �� ����� �� ����� ����.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~��� �� �������� ��� ���. �� ����� �� ����������� �� ���������. �� �� ��������� ���� �������� ����, ��� �� ������.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~����������� ������������ ��� � ������ ������. ��� ���� ��������... ��... ������ ���, ���� ����� �������� ��������� ��� ��� �����������.~
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // ������, ������, ������ �� ����� ��� ����� ����������. ������ �� ������ ����� ���, ��� ��������� ��.
  IF ~  !See("Desther")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~���� ������ ����� ��������� ��������� ��� ����. ��� ��������... ��... ������ ���, ���� ����� �������� ��������� ������� ��� �����������.~
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // ������, ������, ������ �� ����� ��� ����� ����������. ������ �� ������ ����� ���, ��� ��������� ��.
  IF ~  !See("Desther")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from: DESTHER2 1
  SAY ~�������, �������. ����� ��� ����� ����, ��� �������. ���� ����� ��������� ����� � ��� ����� ���������!~
  IF ~~ THEN REPLY ~������ �� ������ ���-�� �� ���� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ���������� �� ����� ����� �������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� ���� ������� � ����� �������.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~������ ���� �����������? ����� ��������� ����� ��� ��������� ����� ������. ���� ����� ��������.~
  IF ~~ THEN REPLY ~������ �� ������ ���-�� �� ���� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ���������� �� ����� ����� �������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� ���� ������� � ����� �������.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY ~�����, �������� ����������. ����� ��������� ����� � ��� ����� ���������. �� ����� ������ ��� �������� ���������.~
  IF ~~ THEN REPLY ~������ �� ������ ���-�� �� ���� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ���������� �� ����� ����� �������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� ���� ������� � ����� �������.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY ~��, ������ ����������, ������. ���-��� ����� ������. ��� �������� ���� ���� � �������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~�� ������ ������� ���. ��� ����� ��������.~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�� ������ ������� ���. ��� ����� ��������.~ GOTO 15
  IF ~~ THEN REPLY ~��������, ��� � ������� ��� ������!~ GOTO 16
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~���������� ����� ��� ������ ������ ����������. ������, ������ � � ������������� � ���, ��� ������ ����� ������.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY ~�, � �� �������� �������� �� ���. ���� �� ������ �����, ��� ��� ������ �� ����� ������, ��� ����� ������ ���� �������� �� ���� �������.~
  IF ~~ THEN REPLY ~��� �������� ���� �����?~ GOTO 19
  IF ~~ THEN REPLY ~� ������ ���� ��������� � ������ ���������?~ GOTO 20
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 7.4
  SAY ~��, ��� ���� �������������� � �����������. �� ����������, ����� ��������� ����� � ��� ����� ���������!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY ~��, ��, �������, � � �� ��������� ��������� ��� � �������. ������ ��, ������� �� ��������� � ����� ���������. ��� ������� ������ ���������������. ��� ��������� �����, ��� �����, �� ��� ������� �����������.~
  IF ~~ THEN REPLY ~�� �����-�� ������� ������� ���?~ GOTO 22
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY ~� �� ����. �������� �� ��� �������� ���, �� ��� ���� �������� ������ ���� � �������.~
  IF ~~ THEN REPLY ~��������, ��� � ������� ��� ������!~ GOTO 16
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY ~�����, ��� ���� �������� ��� ���� ��������, ���� ���. � ����, ��� �� �� ������ �� ��������� ��� �����, ��� �����, � ����� ����� �����. �� ������ ��������, � ��������� ����� ����� ����� ��������� ������. ���� ��������� ���� ����������. ����������� �� ��� ���� �� ���� �������� ��������� ���� ����.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 17 // from: DESTHER 6
  SAY ~��� ���������. ��� �� �� ������ �������� �� ����?~
  IF ~~ THEN REPLY ~������ �� ������ ���-�� �� ���� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ���������� �� ����� ����� �������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� ���� ������� � ����� �������.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY ~������ ����� ����� � ��� ����� ���������. �������, ��� ������� ���� ��� ������� �������. ��� ����� ����� ��������.~
  IF ~~ THEN REPLY ~��� ����� ��������� ���������?~ GOTO 22
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY ~������ ����� ��� ���, �� �� ������ ������ �����������, ���� � � ���������� �� ����. �� ������� �� �������� ������. ��, ����� ����, ������� ������, ��� �������.~
  IF ~~ THEN REPLY ~� ������ ���� ��������� � ������ ���������?~ GOTO 20
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 12.2
  SAY ~���? � �� ������ ������� ���. �������, �� ��� ���� ������ ���� �����, �� � �� �� �������� ����� ������ ������������ ��������� ��� ������ � ���. �������, �� ������� ����������? � �� ���� ������� ��������� �����, � ���� � ���� �� ����� ������. ��� ����� ���� ��������� ���������� �������. �� ����������.~
  IF ~~ THEN REPLY ~� ��� �� ��� �������. ��� ������?~ GOTO 23
  IF ~~ THEN REPLY ~� ������ ���� ��������� � ������ ���������?~ GOTO 20
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 7.5
  SAY ~��, ����� ��� �������������� �� ���, ��� ���� �������. ��� ����� ���� ����� ����������, ����� �� �������� ����������, ������� ������ ����� ����������� �� ����� �������.~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY ~��� �������, ��������. ��� ������ ����� ������, ����� ��������� �������������. ������, ����� ��� ������ ������ ����������. �� ������ ������� ����.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY ~� ������ ��� ���� ��������� �����, � � ����, ��� ��� ��� �������� � ����� ������ ��������� ����������.~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY ~��� ����� ���������� � ����������. ��� ������ ������ ������� � �������, �� ������������.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY ~��� ��� ���� �������, �� ��� ���� �������� ���������� �������� ��������, ���� ���� �� �������� �� � ���� �� �������� ��������.~
  IF ~~ THEN REPLY ~��� �������� ���� �����?~ GOTO 19
  IF ~~ THEN REPLY ~������� �������� � ������ ���� ��������.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY ~������ ��, ����� ��������� �������������, ��� ����� �������� ���������� ������� �� ����� ������. ��� ����� � ����� ������... ��� ����� ��� �����...~
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY ~������ � ������ ������� �� �� ��������� ������, ��� ��� � �������� ��� � ���� �������� ����������, ���������� ����� �����. �� ����� ������ ������� ������ ����������.~
  IF ~~ THEN REPLY ~����� ��� ���������? ��� ���������?~ GOTO 28
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY ~������ ������ ����, ��� ��� ����� ������������ �������. ��� ������, �� �� ����� ����������� ��������� ����������� ���� ���������.~
  IF ~~ THEN REPLY ~�� ������� �� ��� ����� ��� ������?~ GOTO 31
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY ~��, ��� ���� �������������� � �����������. �� ����������, ����� ��������� ����� � ��� ����� ���������!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY ~��, ����� ��� �������������� �� ���, ��� ���� �������. ��� ����� ���� ����� ����������, ����� �� �������� ����������, ������� ������ ����� ����������� �� ����� �������.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY ~�������, ���. ��� � ���� ����������� ����� ���������? ������ ����� ���� �������� ������� ������� ���������, ����� ��������� ����������� ��� ����� �������.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY ~��� ����� ���������� � ����������. ��� ������ ������ ������� � �������, �� ������������.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY ~��� ������� ���������. �������� ���������� ���������, ��� � ����.~
  IF ~~ THEN REPLY ~��� ��� ���� ���� �������� ������?~ GOTO 34
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~������... � ����� �� ���� �������, �� �� ���� ���������� ����� ����. ��� ����� ������� ��� ���� ����� ���� ���������. �� ���� �������.~
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 7.4
  SAY ~��, ��� ���� �������������� � �����������. �� ����������, ����� ��������� ����� � ��� ����� ���������!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 7.5
  SAY ~��, ����� ��� �������������� �� ���, ��� ���� �������. ��� ����� ���� ����� ����������, ����� �� �������� ����������, ������� ������ ����� ����������� �� ����� �������.~
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 21.1
  SAY ~��� ����� ���������� � ����������. ��� ������ ������ ������� � �������, �� ������������.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.2
  SAY ~��, ��� ���� �������������� � �����������. �� ����������, ����� ��������� ����� � ��� ����� ���������!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 27.3
  SAY ~��, ����� ��� �������������� �� ���, ��� ���� �������. ��� ����� ���� ����� ����������, ����� �� �������� ����������, ������� ������ ����� ����������� �� ����� �������.~
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 30.1
  SAY ~��� ����� ���������� � ����������. ��� ������ ������ ������� � �������, �� ������������.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 35 // from:
  SAY ~������������ ��� ���. � ���� ������� ��� ���� �����, �� �� ������ ������ ����� ��, ��� �� ������������ �� �����. � ���� ������� ������... ��... �������.~ [FENTH237]
  IF ~~ THEN REPLY ~������ �� ������ ���-�� �� ���� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ���������� �� ����� ����� �������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� ���� ������� � ����� �������.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 37
END


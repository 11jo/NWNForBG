// ����� ������������  ��� �������   ������  ������ �������� ������� ���������, ��� ����� �� ��������� ������������ ���������. �� ��������� ����������� ����������� ���, ������� ���������� ������.

BEGIN ~DESTHER2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����, ������������ <CHARNAME>. �����, �� ����� �������� �����? � ����� ������, ��� ��� ���� �������.~ [DESTH120]
  IF ~~ THEN REPLY ~��� ������� ������. ������ �� ��� ����� ��������� - ��-������.~ GOTO 2
  IF ~~ THEN REPLY ~� ������ �����. ����� ������ ��� ������.~ GOTO 3
  IF ~~ THEN REPLY ~���� ������� ���� ������, ��� ���� ������������ ���. ���� ����������.~ GOTO 4
END

IF ~~ THEN BEGIN 1  // from: FENTHIC2 
  SAY ~������, ������, ������ �� ����� ��� ����� ����������. ������ �� ������ ����� ���, ��� ��������� ��.~
  IF ~~ THEN EXTERN ~FENTHIC2~ 7
END

IF ~~ THEN BEGIN 2 // 0.1
  SAY ~��������, ���� � �����, ����������, ������� ���� ����������� ��������. �� ����� ���������� ������ ���� ���������-���������. �����. ������ ��� ����� ������ � �������. �� �� ������������ �� �������. ������ ����������, ��� �� ������� ��������� �� ����, �� �� ������������.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �� ��������� ������� �������� ������ �������� ���������� ����� �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END

IF ~~ THEN BEGIN 3 // 0.2
  SAY ~�������. �� ��������� � ����, ��� ��������-�������� ����� ����� ������� ���. ������ ��� ����������� � �������� ����, ��� �� �������� �������. ������ ��� ����� ������ � �������. �� �� ������������ �� �������. ������ ����������, ��� �� ������� ��������� �� ����, �� �� ������������.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �� ��������� ������� �������� ������ �������� ���������� ����� �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END

IF ~~ THEN BEGIN 4 // 0.3
  SAY ~�, � �� ���������� � ����� �����������, �� � �������� � ����� ���������� ������� ���������. ��� ��������-�������� � � ���� ����� �������. ������ ��� ����� ������ � �������. �� �� ������������ �� �������. ������ ����������, ��� �� ������� ��������� �� ����, �� �� ������������.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �� ��������� ������� �������� ������ �������� ���������� ����� �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END

IF ~~ THEN BEGIN 5 // 2.1
  SAY ~��� ��� ����. � ��������� � ����� ���������� �������, � �� ���� �� �������. ����� ������ ���������� ��� �������, ��������� ����� �� ������������ ����.~
  IF ~~ THEN REPLY ~���������� ����, ��� ������� ��������� ������?~ GOTO 13
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END

IF ~~ THEN BEGIN 6 // 2.2
  SAY ~����� � ��������� ��� ��� ��������� ��� ��������� �����. �� �� ���������� � ����������, ��� ��� ��� �������� ������ ���������, ��������� �������. �� ����� ������������ �����, �� �������� � ������������ �������, � ����� ����� � ��� ����� ��������� �� ����. ��� ���, ��� ��� ����� �����.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �� ��������� ������� �������� ������ �������� ���������� ����� �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END

IF ~~ THEN BEGIN 7 // 2.3
  SAY ~����� ��������� ����� ������, ��� ����� ������� ���������� � ������������. � ������� � ����� ������ �� �����-�� �����. ���������� �� �������� ������ ����.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �� ��������� ������� �������� ������ �������� ���������� ����� �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // 2.4
  SAY ~��� ������� � ����� ����� ���� �� ���� ����, ��� ��������� ����. ����� �� ��� ���������� � ���� �����.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �� ��������� ������� �������� ������ �������� ���������� ����� �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12

END

IF ~~ THEN BEGIN 9 // 2.5
  SAY ~����� ������. �����, ��� ����� ����������. ����, �������� ������!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // 2.6
  SAY ~����� ������. �����, ��� ����� ����������. ����, �������� ������!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // 2.7
  SAY ~��, ��������� ��� ������������������ �� ����������� �������. �� ��������. �� ������ ��������� ���, ��� �������. ����� ���, ��� �� ������ ������, �� ������ ���������� �� ����� ����������. ��������, ��� ������� ��� ����������. ��� ����� �����.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // 2.8
  SAY ~��, ��������� ��� ������������������ �� ����������� �������. �� ��������. �� ������ ��������� ���, ��� �������. ����� ���, ��� �� ������ ������, �� ������ ���������� �� ����� ����������. ��������, ��� ������� ��� ����������. ��� ����� �����.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // 5.1
  SAY ~�������, ��� ���� ����� ��������. ������ �� ����� ����, ������� � ��� ��� ������ ����� ����. �� ���� ��, ��� ������ � ��� �����, ������. ����������, ��� ��� ����� ��� ������� ���������� ���� ���������. ������ ������� ����� ��� ��������. �� �����, ��� ���� - ����� ������ ��������.~
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~������������ ��� ���. � ���� ������� ��� ���� �����, �� �� ������ ������ ����� ��, ��� �� ������������ �� �����. � ���� ������� ������... ��... �������.~ [DESTH144]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~������ �� ��������� ������� �������� ������ �������� ���������� ����� �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� �� �������� ��� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ ������, ����� �������� ����?~ GOTO 7
  IF ~~ THEN REPLY ~� ���� ���� ������� � ���, ��� ����� ������������.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~�� ��������.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~�� ��������.~ GOTO 12
END


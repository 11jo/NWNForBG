// �������� ������, ������� ������� ������, ������� 1 ����, ���� ���� ������������ ���� ����������� ����, ����� �� ���-������ ��������.

BEGIN ~DYDD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~���? ������ ����, <SIRMAAM>. ���� �� ������ ����, ��, ��� � � �������� ���� �� ����������.~
  IF ~~ THEN REPLY ~� ��� ��, ����������?~ GOTO 1
  IF ~~ THEN REPLY ~����� ����������? � ��� �� ��������?~ GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ��, �������, � ��� ���� � ����������.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1) ~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ��, �������, � ��� ���� � ����������.~ GOTO 4
  IF ~~ THEN REPLY ~���, � ����� �� ��� ����������.~ GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� �����, ����� �������� ����������.~ GOTO 6
  IF ~~ THEN REPLY ~� �����.~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���� ���� �����. ��� ����������� ��������� ������� ��� �������� ����������, <MALEFEMALE>... � ����� ��� ��� ��� ������.~
  IF ~~ THEN REPLY ~����� ����������? � ��� �� ��������?~ GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ��, �������, � ��� ���� � ����������.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ��, �������, � ��� ���� � ����������.~ GOTO 4
  IF ~~ THEN REPLY ~���, � ����� �� ��� ����������.~ GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� �����, ����� �������� ����������.~ GOTO 6
  IF ~~ THEN REPLY ~� �����.~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�. �� �� ������? ��� �, ������, ��� �� ������� ��� ��������. ������� �����, ����� ��� ���������� � �����. ��!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~�, �� *����* � ��� ����. ��� ������ ����� ���� ���������.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1) ~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~�, �� *����* � ��� ����. ��� ������ ����� ���� ���������.~ GOTO 4
  IF ~~ THEN REPLY ~��� ��� � ���� ����� ��������? � ������ *���!*~ GOTO 9
  IF ~~ THEN REPLY ~� �����.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~������ �������������. �� ����� �� ���� ����� ����� � ������ ���������� �������� � ���������� � � ������� ��������������, � ����� �����, ��� ��� �������������� ��������� ��������� ��� ������.~
  IF ~~ THEN REPLY ~� ��� ��� ����������� ���������?~ GOTO 10
  IF ~~ THEN REPLY ~��! ��� ��� �����! � ������ �� ����!~ GOTO 9
  IF ~~ THEN REPLY ~� �����.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��. ��� ���� �� ���������� ����� ���������� ����� �����. ��� ��������� ��� �����, ��� ���� ����� ���������� �������� � ������� ����� ������� ������, <MALEFEMALE>.~
  IF ~~ THEN REPLY ~�����, 100 ������� ������� ��� �������������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ��� � ���� ����� ��������? � ������ *���!*~ GOTO 9
  IF ~~ THEN REPLY ~� �����.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~�������. ��� �, ���� � ������������ ����������� ������ ������������� � ���������� ������ ����� ���������. (�������) � ��������� � ����� ��������� ������� �������� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY ~�. ��� �, ���� ������ ������������ ����� � �������, ��� ��� ��������� ����, ��� �������, <MALEFEMALE>. ��� ���� *�����* ������������ ������ � ���� ����������, ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.7
  SAY ~��� ���� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY ~������� ���. � ��������� ������� ������� � ���������� � �������� ���, �� �� �������� ������ ��������. ������� ���� ������������, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY ~��! � ���� ��� �������, � ������������ ���������. �� ���� ��������� ����. ����� �������� ����-������ �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY ~��... � ����������, ��� ����� ����� ��� ����������. � *������������* ��������� ���������, ������� ������� ��� ������ ����� ��� ������� � �����������. � � ���� �  �������� *�� ����*. ������� �������� ��� ����� ������� ������. �� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY ~�������, �� � ���� ����� ����� ��������, <MALEFEMALE>. � ���� ��������� ��� �������� ����������� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("KnowsAboutMatch","GLOBAL",1) GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY ~����������� �� ���� ����������, <MALEFEMALE>. ��� ��������� ��������� ����� ��������� � ����.~
  IF ~~ THEN EXIT
END


// ���������� ������ ���������   ���� ����� ��������� �������� ��������� � ���������� ����� ������ ����� ������ � ������������� ����.

BEGIN ~SOLDGNW5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)RandomNum(1,2)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~����, ��� � ���� ��� ��� �������?~
  IF ~~ THEN REPLY ~��� ����� ���������� � ����� �����������.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~���� ����� <CHARNAME>. ��� � ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 3
  IF ~~ THEN REPLY ~��� � ���� ������ ���� ����-��������?~ GOTO 4
  IF ~~ THEN REPLY ~������, ��� � �������.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�����? ��� � ����-�������� ������. ��� ������� ������ � ������� ������.~
  IF ~  IsGabber(Player1)~ THEN REPLY ~���� ����� <CHARNAME>. ��� � ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ���, ��� ��� ���� ���� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, <CHARNAME>, ���� ��� ����� ���-�� ���, ����� ��� ������ ��� ���������� ��������� � ������ ��������� ���, ��� ����� ���������� � ����� �����������, ���� �����.~
  IF ~~ THEN REPLY ~� ��� ���?~ GOTO 6
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 3
  IF ~~ THEN REPLY ~��� � ���� ������ ���� ����-��������?~ GOTO 4
  IF ~~ THEN REPLY ~��� ���, ��� ��� ���� ���� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� �� �������? ������� ����������� �� ������. ���� ����� ����� ���, � � ��� ������ ������� - ���� �� ����� �������, ������� ��� ��� ���.~
  IF ~~ THEN REPLY ~��� ����� ���������� � ����� �����������.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~���� ����� <CHARNAME>. ��� � ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~��� � ���� ������ ���� ����-��������?~ GOTO 4
  IF ~~ THEN REPLY ~��� ���, ��� ��� ���� ���� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��� ������� ������ � ������� ������.~
  IF ~~ THEN REPLY ~��� ����� ���������� � ����� �����������.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~���� ����� <CHARNAME>. ��� � ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ���, ��� ��� ���� ���� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~����� ��������� ��������. ����� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY ~�����? ��� � ����-�������� ������. ��� ������� ������ � ������� ������.~
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ���, ��� ��� ���� ���� �����.~ GOTO 5
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)RandomNum(2,2)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~�� ������, � �����?~
  IF ~~ THEN REPLY ~��� ����� ���������� � ����� �����������.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~���� ����� <CHARNAME>. ��� � ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 3
  IF ~~ THEN REPLY ~��� � ���� ������ ���� ����-��������?~ GOTO 4
  IF ~~ THEN REPLY ~������, ��� � �������.~ GOTO 5
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",2)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~������, ������ � ���� ������ �������� ����. ��� �� ����� �� �����������, ������ ��� ��� �������. ��� �������, � ���� ��� ����� � �������... ���� ��� �� ��������� ����.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~����� ������, ���������?~
  IF ~~ THEN EXIT
END


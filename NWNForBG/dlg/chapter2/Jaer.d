// ����� - ��������-����� ������� ����� � ������ ������������� ���������

BEGIN ~JAER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����� �� �������� �������� ���� ���� ���, ��� ����� � ������� �������! � �� ��� �������, �������?~
  IF ~~ THEN REPLY ~��! � ������ ���� ��������� ������, ����� ���������� ���� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~��... �� ��. � �����, �� ������ �������?~ GOTO 2
  IF ~~ THEN REPLY ~� �����, ��� ����� ����� ��� ���� �� ���� � �����, ��������� �������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�����������! � �������� ���� ������, �����, ����� ������. ������, � ��� ������ �� ������, �� ������ �������. ��! � ��� � ���� ��� ���� ������� �������?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~��� ����� ����������?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�������, ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��� ����������� ����, ��� ������� �������. �������� ����������, � ������������ ������ ����� ������� - ��������� ��� � ��������� �����������. � ��� � ���� ��� ���� ������� �������?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~��� ����� ����������?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�������, ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~����! � ��� �� �������� ������ � �����? ��������! ����� ���������� ������, ����� ���������� ������ � �������, ����� �������� ���-������ � ��������� ����� � �������� ���. ��� �������� �������. �� ������������� �������, ��� ��� ����������, ���� ������ �� ����� ����� � �����, ���� �������� ������� ���� �����?~
  IF ~~ THEN REPLY ~���. ���� ����� ������� � ����� ��������, �� ������ ����� �������.~ GOTO 9
  IF ~~ THEN REPLY ~�� ����� ���� ������, ���� ������ ��������, ��������� ���� ������ ��������.~ GOTO 9
  IF ~~ THEN REPLY ~��� ��-�� ����� ���������, ��� ��, � ���� ����� ����� � ����������.~ GOTO 10
  IF ~~ THEN REPLY ~������ ��� �������������� ���, � ���� ������, ��� �������� ����������!~ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~��� �, ��������� ���� ��� ��������� � �����-����� ���������� ���������. ���-������ ���?~
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�������, ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~��� ������ ��� ���������, ����� ���������� �� ������ ����. ������� ������ �������, �� ��� ����� ����� ����. ���-������ ���?~
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�������, ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~����� ������ ��� ��������� ����� � ����� ����. �� ���������� �������� �������� �� ��� � ����, ����� ��� ���������. ��� �������� ������������ ������� ������������ ��������. � ��������� ���� ���������� �� ���� � ��������, ���� ������ ������. �� ��������� ���� ��������������. � � ���� � ����� ���������� ���.~
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~� ������� �� ��������� �� ��������� � ����� �������. ���� ����� ����� ������ ����� � ����� ����, �� ��� ��� ������ ������� �� �������� ������ �� ���, ����� ����� � ������ ����.~
  IF ~~ THEN REPLY ~���� �� � ������� ������ �� �������?~ GOTO 12
  IF ~~ THEN REPLY ~�� ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY ~��� � ������� ���� � ��������� �����������. ��� ������� ���� �������� � ������� ���� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY ~����������� ������ - ����� ��������. �� �� �������: ������� ���� � ������� ����� ������ ������������, ����� ������� ����������� �����. � ��� � ���� ��� ���� ������� �������?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~��� ����� ����������?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�������, ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~� �� ���� �������, � �����, ��� �������� ����� ��������. �����������, ����� ������ �������� ���� ������. �� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.4
  SAY ~�����������! �� ������������� ��� ����� ������. �-�� �������, ��� �� �� ���� ������ � ������ ����������! ��� � ���� ��� ���� ������� �������?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~��� ����� ����������?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~��� ����� ����������?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�������, ������. �� ��������.~ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY ~���� ���� ������� � �������� � ���� ��������, ������ ����� �� ������ ���� ����� ������� ����� � ����� � ����. �� ���� �������� �����������? ������� �� �����, � ������ ���� ��� � �� �������. ������.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~� ����, �� ����� �����. ���� � ���� ���-������ ������?~
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ����� �����������?~ GOTO 7
  IF ~~ THEN REPLY ~�������, ������. �� ��������.~ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 14 // from:
  SAY ~�� ������ ������ ������ ����? ��� ���� ������� �����. �� �������� � ���� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY ~��� �, ��������� ���� ��� ��������� � �����-����� ���������� ���������. ������ ���� ��� ���� ������� �����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("SpiritFo")~ THEN BEGIN 16 // from:
  SAY ~�� ������ ��� ���������, ����� ���������� �� ������ ����. ������� ������ �������, �� ��� ����� ����� ����.~
  IF ~~ THEN EXIT
END

// ����� ������������ ������� �����   ������  �������   ��� ���� �� ������ ������, ������� ��� ���������, ����� ������ �����������.

BEGIN ~SOLDIER7~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",0)Global("TrankarGolem","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�� �����, ����� ������ ���? ��� ����������� ����� ������. � ����� ������� ��������� ������������ �� ������� ���� ������ � ������. �� � ����� ���� ������� ������. ���� ����� ���������� � ���������, ���������� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",0)Global("TrankarGolem","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~���� �� �� ����������, ��������� ���� ����, �� �� ������ ������������� ���� ���������� ��������! �� ��� ����� ���������, ����� ���� �� ������ �������� ������ � ������ ������� �����? ������ ������� ������� � ����� ��� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",1)Global("TrankarGolem","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~���� ������ ������� ���������� ����������, ������ ���! ���� ������� �� ���� ��������� � ����� ����������! ������� �� ����� ��������� � ������ �������� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",1)Global("TrankarGolem","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~������, ����� ������ �����, � ���������� �������, � ��� �������� ���� �������� ���� ���������� �����! �������, ������� ����� ������ ���� �� �������! ����� ���� �� ������ ������, ��� ���������!~
  IF ~~ THEN EXIT
END


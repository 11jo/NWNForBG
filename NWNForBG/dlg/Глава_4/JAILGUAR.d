// ���������� ����� ����� ��������, ���� �� ��� �������, ������������� ����, ���� ������ ����� �������� ��������� � ����� ������������ ���������.

BEGIN ~JAILGUAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��������-��, <SIRMAAM>. �����, ������ ��, ������, � ������, ��� ��� �����������, �������? ���� ������ ���������� � ����, ������� ����� ���������� �� ����.~
  IF ~~ THEN REPLY ~���� ����� ������ ���� ��������� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~� ������, ��� � �������� ���� ����� � �������� ������!~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�, ����� �������, ��� ���� ������ <MALEFEMALE>. ��� ���� ��, ��? ���������, <SIRMAAM>.~
  IF ~~ THEN DO ~Unlock("Door01")OpenDoor("Door01")~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, ������ �� ���� �������������! � ���� ����� ���� ������! ���� ������ ������ ��� ����� �... ��, �������� ���������!~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~��  <MALEFEMALE> �� ������, ������, ����� ��������� ������������? ���������.~
  IF ~~ THEN DO ~Unlock("Door01")OpenDoor("Door01")~ EXIT
END

// ---------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 4 // from:
  SAY ~�� ���, ���� ����� ������ ��������� ������������, ���������? ���������.~ ~�� ��, ���� ����� ������ ��������� ������������, ���������? ���������.~
  IF ~~ THEN EXIT
END


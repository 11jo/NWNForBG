// ��� ������� �����

BEGIN ~SERVANV~

IF ~  !NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��������, �� ���� ���� ��������� ���.~
  IF ~~ THEN EXIT
END

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY ~������ ����, ��� ��� ��������� ������� � ��� ������ ���. � �� ����� ���... ���� �� � ����������������, ��� ��?~
  IF ~~ THEN REPLY ~���, �� ������.~ GOTO 2
  IF ~~ THEN REPLY ~��, ����������. �� �����������, ������ �� ����� ����� �������, ��� ��� ���� �� �� ������ ����� ���� ����, ��� �������� ��� �����.~ GOTO 3
  IF ~~ THEN REPLY ~�� �� ����� �� ��������� �������, �� ������ ��� ���-��� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY ~��, �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY ~�-�����, ����������, �� �������� ����, � ����� ���� ��������� �����, � �� ������� ��� �������� ������������.~
  IF ~~ THEN DO ~EscapeAreaDestroy(90)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY ~��, �� �����, ����� ��� ��������... �� �� �����, ��������, ��� ����������� ���.~
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY ~� �����, �� ������ ��� ���� ���������� �������, ��� ��� �������!~
  IF ~~ THEN EXIT
END

// ����������� ������ ������ �����-��������� ����� (��������), ���������  ���� �� �������� �����, ����� �������� � �������� ��� �����, �������� �������.

// ����� ������������! ���������� �����! [MORAG70]

BEGIN ~MORAG3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~�� �������, ����������, �������. �� ����� �����, � ���� ��� �� ����, ������ ���� ��������� ��������!~ [MORAG71]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���� ����� ����, ������ ������. ��� ������ ������ � ���������� ����� �����, ������� ���� ��, ��� ����������� ���!~ [MORAG72]
  IF ~~ THEN EXTERN ~ANCIENTC~ 1
END

IF ~~ THEN BEGIN 2 // from: ANCIENTC.1
  SAY ~�������� � ���� ���� ������� ���, ������� ��� � ����� ������ � �����-���������.~ [MORAG73]
  IF ~~ THEN EXTERN ~ANCIENTC~ 2
END

IF ~~ THEN BEGIN 3 // from: ANCIENTC.2
  SAY ~������� ����� �����������! ���������� ����� ��������� � �������� ����, ������� ������� �������� ������ ���!~ [MORAG74]
  IF ~~ THEN EXTERN ~ANCIENTC~ 3
END

IF ~~ THEN BEGIN 4 // from: ANCIENTC.3
  SAY ~�������� ���� ��������� ����������� ����! ����� ������ ����������� ��������� �������� ����� �����!~ [MORAG75]
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~��������� ����� ������� ��������� �������, ������� ������� ������-�������� � ��������� ��� �� ���� ������! �����...~ [MORAG76]
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~� ��� ����? ���� ���������� ����� � ��� ���!~ [MORAG77]
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~����� ������������! ���������� �����!~ [MORAG70]
  IF ~~ THEN DO ~SetGlobal("LiizardHostile","MYAREA",1)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END


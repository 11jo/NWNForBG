// ���������� ������ ����������   ������ ��������   ����� ��������� ��������� �����������, ������� �� �����-�� �������. �������, ��� ��� ��� � ������.

BEGIN ~INTFORGU~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")!Allegiance(Myself,ENEMY)Global("MindFlayerInMe","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~����... ������ ���������... �������... ������... ���������... �������...~ [INTFOR50]
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),16,INT)CheckStatGT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~��������� ������! �����! ����� ������!~ GOTO 1
  IF ~  !CheckStatGT(LastTalkedToBy(Myself),16,INT)!CheckStatGT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~��������� ������! �����! ����� ������!~ GOTO 2
  IF ~~ THEN REPLY ~��� ��� ����������? �� ���� ���������?~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�? �-���? ��... ��� ���� ������� ������. ���... ����.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����... ������ ���������... �������... ������... ���������... �������...~
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("Crewtd2")Global("MindFlayerInMe","LOCALS",0)~ THEN BEGIN 3 // from:
  SAY ~��� �����... ��������. �� ��� ��������, � ������� �����! ����� ������� � ���� �����!~ [INTFOR55]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~� �����. ���� � ����� �����. ������� ��� �� ������. �������.~
  IF ~~ THEN DO ~AddexperienceParty(10000)EscapeAreaObject("To1314")~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")Allegiance(Myself,ENEMY)RandomNum(3,1)Global("MindFlayerInMe","LOCALS",1)~ THEN BEGIN 5 // from:
  SAY ~��, ���������! � ���������! ��-��-��-��-��!!!~ [INTFOR51]
  IF ~~ THEN DO ~AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")Allegiance(Myself,ENEMY)RandomNum(3,2)Global("MindFlayerInMe","LOCALS",1)~ THEN BEGIN 6 // from:
  SAY ~������� � ���� ������, ���� ������! ���� ��� �� �������!~ [INTFOR52]
  IF ~~ THEN DO ~AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")Allegiance(Myself,ENEMY)RandomNum(3,3)Global("MindFlayerInMe","LOCALS",1)~ THEN BEGIN 7 // from:
  SAY ~����������� ��� ����, � � ����� ��������! � �� ���������� �����������!~ [INTFOR53]
  IF ~~ THEN DO ~AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END


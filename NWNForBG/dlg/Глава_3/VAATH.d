// �������� ���, ���� ��� ���� ������-��� �������� � ��������, ������ ��� ������ � ������. -  ������ ����� 1340 ��� 
// ��� ��������! ��� ��������!

BEGIN ~VAATH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~���� �� ������� �����, ��� ��������� � ������ �������� �����!~
  IF ~~ THEN DO ~SetGlobal("VaatHostile","MYAREA",1)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",1)~ THEN BEGIN 1 // from:
  SAY ~���� �� ������� ����. ���� �������� ���� ����.~
  IF ~~ THEN REPLY ~��� ��? ������ �� ����� �� ����?~ GOTO 2
  IF ~~ THEN REPLY ~�����, �� ����� ������� ��� ����� �������� ���� � �����!~ GOTO 3
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~����� ��� ���? ��� ����� ���� ������.~ GOTO 4
  IF ~~ THEN REPLY ~���� ������ ����, ������� �� ��� �������!~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ����, ������! ������ ���� �������� ���!~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~���� �� ����� ������� ����? ��� ������� ������, ������� �������, �������� ���! ��� ������ �����. ��� ��������, ������ ��� ���� ��������� � ������. �� ���� �������. ������� ������� ��� ����. �����, ���� ��������� ���� ����?~
  IF ~~ THEN REPLY ~�����, �� ����� ������� ��� ����� �������� ���� � �����!~ GOTO 3
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~����� ��� ���? ��� ����� ���� ������.~ GOTO 4
  IF ~~ THEN REPLY ~���� ������ ����, ������� �� ��� �������!~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ����, ������! ������ ���� �������� ���!~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~��� ������ ���� ������, ���� ���� �� ������� ����. 500 �������, ����� �������� ���� ����.~
  IF ~~ THEN REPLY ~����� ��� ������ � �������� ������, �� �� � ���������!~ GOTO 7
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~��� ����� ��� ���-���: ���� ������.~ GOTO 8
  IF ~~ THEN REPLY ~�����, � �������� ���� ���� � ������ ���� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~���? ���� �� ���� ���� ���� ������! ���� ����� ������, ����� ����!~
  IF ~~ THEN REPLY ~��� ��� �����, ����� �������� ��������������.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~��� ������ �� �����! ��� ������ ������. �� ���� ���� �� ������� ���... ��� ����� ����, ��� �������� ����. ��� ������ ���� ������, ���� ���� �� ������� ����. 500 �������, ����� �������� ���� ����.~
  IF ~~ THEN REPLY ~����� ��� ������ � �������� ������, �� �� � ���������!~ GOTO 7
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~��� ����� ��� ���-���: ���� ������.~ GOTO 4
  IF ~~ THEN REPLY ~�����, � �������� ���� ���� � ������ ���� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~����� ��� �������, ��������!~
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("VaatHostile","MYAREA",1)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY ~���� ������� <MALEFEMALE>! ���� ������� ������ � �� ������������!~
  IF ~~ THEN DO ~GivePartyGold("500")EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY ~����, ��� ���� ����! ��� ������ ���� ������ ������ ���. ��� �������. ��� ������ ����� ��� ���� ����������! ����� �� �����, ��� ���� �� ����!~
  IF ~~ THEN REPLY ~�������. � ������ ������ � ������� ����.~ GOTO 9
  IF ~~ THEN REPLY ~���, � ����� ������ ������ � ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 3.2 � ������� � � �������
  SAY ~���, ���� ����� ��� ������. ������ �� ���� ������� ����. ���� ����� ������ � ��������� ���� ����, ������? ���� �������� ������� � ������ ������, � ��� ������� ������-������. ����� �� ������, ��� ���� �� �������. ��� ������� ����, ���?~
  IF ~~ THEN REPLY ~�����, � �������� ���� ���� � ������ ���� ����.~ GOTO 6
  IF ~~ THEN REPLY ~����� ��� ������, ���������� ������ � �������� ������, �� �� � ���������!~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY ~���� ������� <MALEFEMALE>! ���� ������� ������ � �� ������������!~
  IF ~~ THEN DO ~GiveItemCreate("VAATHEA2",LastTalkedToBy,0,0,0)EscapeAreaDestroy(60)~ EXIT
END


// ����� ������ 2 - ��� �'���  ���� ������ �������� �� �������� � ���������. ���� 175 �����.  Ingo  ErikNW  Constanc Mary

BEGIN ~PETE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��� ��� ����� ������ ������ ������, <LADYLORD>?~
  IF ~~ THEN REPLY ~��� ���� ���?~ GOTO 1
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�-��? � ������ �'���, �� �� ������ ����� ���� �����, ���� ������. � ���� �� ���?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~�� ������ ����� ���� <CHARNAME>.~ GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY ~������� ��� ���� �����, ��� ����� ����������� <CHARNAME>.~ GOTO 5
  IF ~~ THEN REPLY ~��������, �� � ������ �� ������� ������ �����.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY ~���������, �� ��� �� ������ ������������ ����. � ���� ����������� ������� ���.~
  IF ~~ THEN REPLY ~������� � ��� �����?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��, ����� �������� ����� �������. ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~����� ������. <CHARNAME>, ������. � ���� ��� �� ����� � ��������� ����� ���� ������ �����... ��� �������, �� �� ������� ������?~
  IF ~~ THEN REPLY ~� ����� ��������� �� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~��� ������. � ���� ��� � ��������� ����� ���� ������ �����, <LADYLORD>... �� ����������, ���� � ������� ��� ������?~
  IF ~~ THEN REPLY ~� ����� ��������� �� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY ~������, ��� ���� ������ �����, ����� ������. � ���� ��� �� ������ ������� ������������.~
  IF ~~ THEN REPLY ~� ����� ��������� �� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.1
  SAY ~� ������ ����� �������� �����, ��� ��� ����� ���� �� ���� ����� ���������. ������� � ��� ����������� �������, ���������� ����� � �� ����... ������� �����, � �� 500 ������� �� �� ������ ���. ��� ��� ���� ����� � ���� �������. � ���� ��� ���� ������ ������, ����� �� ����� ������ ������ �� ���������.~
  IF ~~ THEN REPLY ~��, ��� �����, ��� ���� ��� �� �����.~ GOTO 8
  IF ~~ THEN REPLY ~��������, �� ���-�� ��� �� �������� ������������� �����������...~ GOTO 9
  IF ~  Dead("Silverbk")~ THEN REPLY ~������-��, ��� ������� ��� ������.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~��, ���������� ����� �� ������� �� ���� ����, �� �� ����������...~ GOTO 11
  IF ~~ THEN REPLY ~� ���� ������ �����������.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~������, ��� ��? ��, �, �������, ������� �������� ������ �����, ����� ��������� ������� ����� ������, �� �� ������ ��� ����� �������. �� � ����, ��� ��� ���-�� �����?~
  IF ~  Global("KnowsAboutCave","LOCALS",1)~ THEN REPLY ~���, ����� ��� ���, ��� � ���� ����� ���� ������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ����������, ���� � ����� ��� ��� ��������� ��������?~ GOTO 14
  IF ~  Dead("Silverbk")~ THEN REPLY ~������-��, ��� ������� ��� ������.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~��, ���������� ����� �� ������� �� ���� ����, �� �� ����������...~ GOTO 11
  IF ~~ THEN REPLY ~� �������, ��� ������ ����� ������.~ GOTO 15
  IF ~~ THEN REPLY ~���. ��� ���� ������� ��� ������� ���������.~ GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY ~��� � � �����. ��� �, ����� ����� ���� ��������, ��� �� ������ ������� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3 8.3
  SAY ~� ����, <MALEFEMALE>, �� ����������! ��� ��� ��! ������� ��� ��������, ������! ��, � ������... �����, ������� � 500 �������  ����� �����������, ��?~
  IF ~~ THEN REPLY ~��� ���� � ����, ���. ��� ���� � ����.~ GOTO 17
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~�����, � ���������� ������� �������.~ GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~�����, � ���������� ������� �������.~ GOTO 19
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~�����, ���� ��� ������, � �� � � � ���� ������ ������!~ GOTO 20
  IF ~~ THEN REPLY ~�� ����� �������� ��������������. ��� ����������� -- ���� ������������.~ GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 7.4 8.4
  SAY ~���-���!? ��, �� ��� � �����, ����� �������. � � ��� �� � ���� � ��������� ������������... ��, �� ����� ���� �������. � ���� �� �����, ��� ��� ����������?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� ���� ��� �����. ��� ������� ���.~ GOTO 22
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� ���� ��� �����. ��� ������� ���.~ GOTO 23
  IF ~~ THEN REPLY ~��� �, ����� � ����� � ���� ��...~ GOTO 15
  IF ~~ THEN REPLY ~����� ������� ����-������ �������, ������ ��� � �� ������� �� �����...~ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY ~����� ����. ��� �� ������ ������?~
  IF ~~ THEN REPLY ~��� � ���� ����� ���� ������?~ DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY ~���-�� �� ��� �� ����� ����� �� ����� ������.~ GOTO 25
  IF ~~ THEN REPLY ~��� ������ �������� � ���� ������?~ GOTO 26
END

IF ~~ THEN BEGIN 13 // from: 7.5
  SAY ~���� � ������ ��������� � ��� �� ��� �����. ��� � ��� ������. ��, ��� ���-������? ��� ���-���� �� ��������� � �������, ��� �������?~
  IF ~  Dead("Silverbk")~ THEN REPLY ~������-��, ��� ������� ��� ������.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~��, ���������� ����� �� ������� �� ���� ����, �� �� ����������...~ GOTO 11
  IF ~~ THEN REPLY ~� �������, ��� ������ ����� ������.~ GOTO 15
  IF ~~ THEN REPLY ~���. ��� ���� ������� ��� ������� ���������.~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 7.5
  SAY ~������-�� � �� � ���������� ��������� �������������. ��� ���� ���� ����� �� ������ ��������. ��, ��� ���-������? ��� ���-���� �� ��������� � �������, ��� �������?~
  IF ~  Global("KnowsAboutCave","LOCALS",1)~ THEN REPLY ~���, ����� ��� ���, ��� � ���� ����� ���� ������?~ GOTO 13
  IF ~  Dead("Silverbk")~ THEN REPLY ~������-��, ��� ������� ��� ������.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~��, ���������� ����� �� ������� �� ���� ����, �� �� ����������...~ GOTO 11
  IF ~~ THEN REPLY ~� �������, ��� ������ ����� ������.~ GOTO 15
  IF ~~ THEN REPLY ~���. ��� ���� ������� ��� ������� ���������.~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 8.5
  SAY ~������� ��� �������. ������������� ����� ������� ����� ������, � � ������ ������� ��� ��������������.~
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",1)~ EXIT
  IF ~  !Global("PeteQuest","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.6
  SAY ~��� ������, <LADYLORD>, ������ ������ ��� ������ ����, ��� �� ������ �� ������ ������� ������� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~��� �, ������� �� ������. ������, ����� ������� ������ ���, ��������� � ���� ��������. ��� �� ��������, ��� ��������. � ������ ����� ��������, ��� ���� � ����-����� �����, �� ������ ��������. ��� ��� ������� ���.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~������, �� ����� ������ ����� �� ��������. ��� 675 �������, ��� ���, ��� � ���� ����. � ����� ������������� ������ ����� ��������� ���.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)GivePartyGold(175)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY ~�����, ������ ����� � �������, �� �� ��� � ������ ������� ������ ����� ��������. ������ ��� 500 ������� � ���� �� ����. � ������ ����� ��������, ��� ���� � ����-����� �����, �� ������ ��������. ��� ��� ������� ���.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY ~� �� ��� �������� �������� ����� ������? ������ � ��� ����� ������, �����, � ��� 500 �������, ������� � ��� ������... � ������ ����� ��������, ��� ���� � ����-����� �����, �� ������ ��������.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.5
  SAY ~��, ����� �� �� ������ �������, <LADYLORD>. ���� �� ����� ��� �� �������� ����, � �� ���� ����� ����� ���� �� ���-���� ����������. � ������ ����� ��������, ��� ���� � ����-����� �����, �� ������ ��������. ��� ��� ������� ���.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.1
  SAY ~����� ������, ����� ���. �����, ��� ������ �� ��������� �����, �� � ��� ����... 500 �������, � ������� �� ��������������, ����� ����������?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~�����, � ���������� ������� �������.~ GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~�����, � ���������� ������� �������.~ GOTO 19
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~�����, ���� ��� ������, � �� � � � ���� ������ ������!~ GOTO 20
  IF ~~ THEN REPLY ~�� ����� �������� ��������������. ��� ����������� -- ���� ������������.~ GOTO 21
END

IF ~~ THEN BEGIN 23 // from: 11.2
  SAY ~���, � �� �� �������, � ��� ����! ���� ���������� ����� ���� ����� �� ���� �� �� ��������.~
  IF ~~ THEN REPLY ~��� �, ����� � ����� � ���� ��...~ GOTO 15
  IF ~~ THEN REPLY ~����� ������� ����-������ �������, ������ ��� � �� ������� �� �����...~ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY ~������ � ��� � ������ � ��� �� ���� �����. ����� ���� �� ��� ��� ������.~
  IF ~~ THEN REPLY ~���-�� �� ��� �� ����� ����� �� ����� ������.~ GOTO 25
  IF ~~ THEN REPLY ~��� ������ �������� � ���� ������?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, � ���� ������ ���������� ���������� ��� �������� �������.~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY ~����� � ���, �� ������ � ������� ���������. � ���� ����� �� ������� ����� �� �����������, ��� �����, ����� ����� ����� �� ����... ��, ����� ��� ����� ���� ������, ���� ��� ��� ������. �, � ����� ������, ����� ����� � ������ ���� ����� ����� ������...~
  IF ~~ THEN REPLY ~��� � ���� ����� ���� ������?~ DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY ~��� ������ �������� � ���� ������?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, � ���� ������ ���������� ���������� ��� �������� �������.~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 12.3
  SAY ~��� ���� �� ������� �����. �������� - ���� ������ � ������� �������. �� �� ������ ������, ��� � ��� ��������, ��� � �������� ������� ����...~
  IF ~~ THEN REPLY ~��� � ���� ����� ���� ������?~ DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY ~���-�� �� ��� �� ����� ����� �� ����� ������.~ GOTO 25
  IF ~~ THEN REPLY ~�� ������, � ���� ������ ���������� ���������� ��� �������� �������.~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 12.4
  SAY ~�� ��������? ������ ���������� ����� � �� ����?~
  IF ~  Dead("Silverbk")~ THEN REPLY ~������-��, ��� ������� ��� ������.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~��, ���������� ����� �� ������� �� ���� ����, �� �� ����������...~ GOTO 11
  IF ~~ THEN REPLY ~� �������, ��� ������ ����� ������.~ GOTO 15
  IF ~~ THEN REPLY ~���. ��� ���� ������� ��� ������� ���������.~ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)Global("PeteQuest","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY ~���? �������� ���-��?~
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)Global("PeteQuest","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY ~�, �� ���������! �� ���, ���� ������� �������? ����� �� ��� �������, ���������� �����?~
  IF ~~ THEN REPLY ~���, ����� ��� ���, ��� � ���� ����� ���� ������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ����������, ���� � ����� ��� ��� ��������� ��������?~ GOTO 14
  IF ~  Dead("Silverbk")~ THEN REPLY ~������-��, ��� ������� ��� ������.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~��, ���������� ����� �� ������� �� ���� ����, �� �� ����������...~ GOTO 11
  IF ~~ THEN REPLY ~� �������, ��� ������ ����� ������.~ GOTO 15
  IF ~~ THEN REPLY ~���. ��� ���� ������� ��� ������� ���������.~ GOTO 16
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~   Global("PeteQuest","GLOBAL",2)~ THEN BEGIN 30 // from:
  SAY ~��, �����, �������� ��� ����� �������. � ��� ���� � ����-����� �����, �� ������ ��������. ��� ��� ������� ���.~
  IF ~~ THEN EXIT
END


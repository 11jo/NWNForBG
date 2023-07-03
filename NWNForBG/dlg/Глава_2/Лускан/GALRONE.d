// ������ ������ � �������� ������ ���� ������� �������, ���� �� ��������� ����, ������� ��������� � ������.

BEGIN ~GALRONE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,13,CHR)~ THEN BEGIN 0 // from:
  SAY ~�� �� ������ �� ��� ����������� ������, ������� ���������� ���� �����. ����� �� ������ ����?! � ������ ������, ����������!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~���������� � ������! � ������ ���, ��� ������!~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��. �� � ����� ���, <MALEFEMALE>? �� ��� ������� � ���� �������! � ������, ���� � ���� ���� ��� ���-������ ������...~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 8
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�������. '��' �������, ���������? � ����� ����� ������� ����� � ��� �����, ���� ��� � ������������� ����������, ��� � ���� ���� ������� �� ���� �����. � ����� ��� �� �� �����, ��� � ��. � �� ��������� �������� �������. � �� �������, ����� ����� ��� ������� ��������� � ��� � ���������� ����� �� ��� ���������... � � ���� ��, ���� ��������� ��� - �� ����� ��� ����� �������!~
  IF ~~ THEN REPLY ~����� �� �����, ����� �� ���� ������������� � ��������� ����.~ GOTO 11
  IF ~~ THEN REPLY ~������ �������. ����� ����, �� ������ ��������� �����-������ ������.~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ����������, ���� � ����� ������� �� ����� �������, ������� ���?~ GOTO 13
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~��! �����?! �� ���, ����� �������?! ����� ��������� ���������: � �� ��������� �������� �������. � �� �������, ����� ����� ��� ������� ��������� � ��� � ���������� ����� �� ��� ���������... � � ���� ��, ���� ��������� ��� - �� ����� ��� ����� �������!~
  IF ~~ THEN REPLY ~����� �� �����, ����� �� ���� ������������� � ��������� ����.~ GOTO 11
  IF ~~ THEN REPLY ~������ �������. ����� ����, �� ������ ��������� �����-������ ������.~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ����������, ���� � ����� ������� �� ����� �������, ������� ���?~ GOTO 13
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~���... �����, ��� ������ ����� ���������� ���������� � ����� �������. � ����� ������, ��� �� ����������. ��� ���� �� ��� ���-���� �� ���� ����?~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~��� ��?~ GOTO 8
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~��! � �� ���� �� ������ ������ �����! � �� ���� ������ ������ � ��������, ��� ����� ������ ��� ���! ���, ��� ������!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~��������! ���������! ���-������, ��������!!!~
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~��, � ������ ����� �� ���������� ����!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY ~���� ����� ������. ���� � � ����������� ������, �� ��������� ���� ��������. ���������� ������ ��������� ��������� ���... � ��������� ��������� ��� ������. �����, �� ����� �� ���������� ������� ����, �� ������ � ������� ������ ������ ��������. �������� ����� �������������, ��� ��.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� �������?~ GOTO 16
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY ~�����, ����� � ���� ���.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� �������?~ GOTO 16
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY ~��, ��. �����, ���� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.2
  SAY ~�����, ��� ��� ��� � �������. ������ ������ �� ������ �� ������� �����. ������� ��������� �� ����!~
  IF ~~ THEN REPLY ~������ �������. ����� ����, �� ������ ��������� �����-������ ������.~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ����������, ���� � ����� ������� �� ����� �������, ������� ���?~ GOTO 13
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 0.2
  SAY ~������, ��� ���? ����� ������. ���������, ��������� �� ����� ���� �������... � ������ �� ��� ��� ���� ���������. � ��� ���, ��� �������� �����, � ���� ������ ���� �����... ������� ��� 1000 �������, � ������ �������� �������. � ��� ��������� ��������.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 �������... �����.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 20
  IF ~~ THEN REPLY ~� �� ��������� "��������" � ��� �������!~ GOTO 21
  IF ~~ THEN REPLY ~������. ������� ��� �������. ����������.~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY ~�... �������. �� ����� �, ��� ��� ����� ��������� �� ����, ����� �������� �� ��� ������������ �����������. ��� ��������� ��� ������ ������� ��� ���� �����, ��� � ������. ��, ������, � ���� ��� ������. ����� ������... ���� �� ��� ����� �������, ��� ������ ���������� ��� ���-�� ������. ����� ���������� ��� ������... ����� ��� 1000 �������, ����� ������������ ���, � ������� ���.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 �������... �����.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 20
  IF ~~ THEN REPLY ~� �� ��������� "��������" � ��� �������!~ GOTO 21
  IF ~~ THEN REPLY ~������. ������� ��� �������. ����������.~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 0.1
  SAY ~����������� � �������.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� �������?~ GOTO 16
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 0.1
  SAY ~��, �� ��� ����� ��� �����? ������ �������� ������� ������� ������, � ����� ������ ����������, ��� �� ��� ������ ��������� �� � ��������. � �� ����, ������ ���� ��� ��� ��������. ��� ����� ����� ����������, � ����� ������ ����� ������ �����������, ����� �� ������ ���.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� �������?~ GOTO 16
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 0.1
  SAY ~����� ���� ������ �� ����� ������� ������ ���. ���������� �� ��������� ����� �����.~
  IF ~~ THEN REPLY ~����� ����������?~ GOTO 23
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY ~����� ������. ������ ����������, ��� ��� ������� ������ ��� ��, ��� �� ��������� ���... �� ����� ��� �����. � ����� ������, ����� ����, ��� ������ ����������� �������, ������� ��� ��������� �������� ����� ��������� ������. �� ����� ��� ���. �������� �� � ����������. ���� � ���� ������� �������� ���� ����� ������, ��� �����, � � ������ ������� �� �� �����.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(1000)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.2
  SAY ~ ��! � ��� ���, ��� ������ �� �����������, ��� �������� ������ ������ ���� � ���. ����� � ������, ��� �����, � ��������� �� ��� �������. �� ����� ��� ���. �������� �� � ����������. ���� � ���� ������� �������� ���� ����� ������, ��� �����, � � ������ ������� �� �� �����.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2
  SAY ~*��������* ����� ������. � ������ 400 �������... �����, ����� ������, ����� ������������ ��� ������.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~�������� 250 �������. ���������, ��� ������ �� ��������, ���� �� ����� ��� ����.~ GOTO 24
  IF ~  PartyGoldGT(399)~ THEN REPLY ~���������. 400 �������... �����.~ GOTO 25
  IF ~~ THEN REPLY ~� �� ��������� "��������" � ��� �������!~ GOTO 26
  IF ~~ THEN REPLY ~������. ������� ��� �������. ����������.~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 0.2
  SAY ~����� ����� ����������, ��� �������� ��������������� ��� ������. ��� ����� 1000 �������. ����������, � �� �����, ��� ���� ������� ��� ������ ����� �������.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 �������... �����.~ GOTO 17
  IF ~  PartyGoldGT(249)~ THEN REPLY ~�������� 250 �������. ���������, ��� ������ �� ��������, ���� �� ����� ��� ����.~ GOTO 24
  IF ~~ THEN REPLY ~� �� ��������� "��������" � ��� �������!~ GOTO 21
  IF ~~ THEN REPLY ~������. ������� ��� �������. ����������.~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY ~����� ����� ��� �������� ��������������� ���� ������. ���� �� � ������� ���� ����� ����������� ������� ���� �����, � ���� �������� ���-���. 1000 ������� - ������ ��� ����.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 �������... �����.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~� �� ��� ��� ������ ��� 250 �������.~ GOTO 20
  IF ~~ THEN REPLY ~������. ������� ��� �������. ����������.~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY ~��� ����� ������ ����� �� ����������, ���? ������ ���� ����� ������������������� ������� � ������ �� ��������? ����. ������� 250 �������... ����� ����, �� ����������.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 �������? ������.~ GOTO 27
  IF ~~ THEN REPLY ~� �� ���� ��������� ������� �� ���.~ GOTO 28
  IF ~~ THEN REPLY ~������� ��� �����������. ���� ����� ���!~ GOTO 29
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from: 0.1
  SAY ~(��������) �������� �������, ����������. ���������� �� ����� � ����� ����, �� ������ ������� �����. � ��� ����� ����� ������ �� �����. ��� �� �������... � ����� ���� �� ������. �����, ����������, ������ ���������.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY ~��! � ��� ���, ��� ������ �� �����������, ��� �������� ������ ������ ���� � ���. ����� � ������, ��� �����, � ��������� �� ��� �������. �� ����� ��� ���. �������� �� � ����������. ���� � ���� ������� �������� ���� ����� ������, ��� �����, � � ������ ������� �� �� �����.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY ~�� ����� ��� ���. �������� �� � ����������. ���� � ���� ������� �������� ���� ����� ������, ��� �����, � � ������ ������� �� �� �����.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(400)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.2
  SAY ~����� ����� ��� �������� ��������������� ���� ������. ���� �� � ������� ���� ����� ����������� ������� ���� �����, � ���� �������� ���-���. 400 ������� - ������ ��� ����.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~�������� 250 �������. ���������, ��� ������ �� ��������, ���� �� ����� ��� ����.~ GOTO 24
  IF ~  PartyGoldGT(399)~ THEN REPLY ~���������. 400 �������... �����.~ GOTO 25
  IF ~~ THEN REPLY ~������. ������� ��� �������. ����������.~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY ~�� ����� ��� ���. �������� �� � ����������. ���� � ���� ������� �������� ���� ����� ������, ��� �����, � � ������ ������� �� �� �����.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY ~���� ��� �� ����� ��������� ���� ���� ������, ����� ��� �� � ��� �������������. 250 ������� - ��� ��������� ����... �� ������.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 �������? ������.~ GOTO 27
  IF ~~ THEN REPLY ~������� ��� �����������. ���� ����� ���!~ GOTO 29
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY ~�-���?! �� �� ��������! �-�� ������! ���-������, ��������!!!~
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END


// -----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,14,CHR)CheckStatGT(LastTalkedToBy,8,CHR)~ THEN BEGIN 30 // from:
  SAY ~���� �� � ���� ������ ��� ���� ������, ��� �� ����������! ����� �� �����?!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~���������� � ������! � ������ ���, ��� ������!~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 7
END

// -----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)~ THEN BEGIN 31 // from:
  SAY ~���������� �� ����� ����! ���! ���������! ��� ��� �� ���� �����?!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~���������� � ������! � ������ ���, ��� ������!~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 7
END

// -----------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,13,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 32 // from:
  SAY ~��. �� ��� ��� ����� "������������" - ��������� ��� �����?~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~���������� � ������! � ������ ���, ��� ������!~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 7
END

// -----------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,14,CHR)CheckStatGT(LastTalkedToBy,8,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 33 // from:
  SAY ~� ���, ������� ��, ����� �����-�� �������? ��� ��� ����� �� ���� ���? ������������!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~���������� � ������! � ������ ���, ��� ������!~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 7
END

// -----------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 34 // from:
  SAY ~����! ��� ��� �� ���� ��� �� ���� ������������?~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~� �����, ����� ���������� � ���� � ������� �����.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~�����������. � �� ������� ��� �������� �����.~ GOTO 5
  IF ~~ THEN REPLY ~���������� � ������! � ������ ���, ��� ������!~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 7
END

// -----------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("QuestDone","LOCALS",0)~ THEN BEGIN 35 // from:
  SAY ~� ���� ������! ���������� ������!~
  IF ~~ THEN EXIT
END


// ������ �������� �������� ���� ������� ��� ����������� ������� �������� � �������� ������������ �������������, �� ��� ������ ��������� ��������� �� �� ����.   !HasItem("PlatAuc",Myself)  45 - ��������

BEGIN ~JADALE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)Global("Ring_Is_Stolen","LOCALS",0)CheckStatGT(LastTalkedToBy,9,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 0 // 
  SAY ~����� ���������� � ��� ���. � ���-������ ���� ��� ��� �������, <SIRMAAM>?~ [JADALE51]
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��... �� � ���� ������ ��� ������ ����. � ���� ��� ��� ���-�� ������. ��������. �� ��� ���-������ ������?~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~� ����� �� ��� ��� ������? � ���� ��� ���� ��� ������ ����. � ������, ���� ��� �� ���� ������ ������ �� �����...~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� ������ � ������, ������� ��� ��� ����? ��... ������ ����, ���� ��� � ������. � �� �����, ��� �� ��������� ��������! ���� ������ ����. �� ��� ��� ��� ������, ������ ��� ����� ����, � � �� ����� ���, ������ ��� ������ �� ����������!~
  IF ~~ THEN REPLY ~��������� ����������. ������� ������� ���, �?~ GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY ~�����? (��������) �� ���� ��� ���������� �� ����. �� ����, ������ �� ����������� ����. ���� ������ ����. �� ��� ��� ��� ������, ������ ��� ����� ����, � � �� ����� ���, ������ ��� ������ �� ����������!~
  IF ~~ THEN REPLY ~��������� ����������. ������� ������� ���, �?~ GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~� ���� �������. �� ����� ���� � ������ ������ ��� � ������. � ���� ���-������ ��� ��� �������?~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY ~� � ������������� ������ �� ���� �������. ��� �� ������?~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY ~���� � ������� ��� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY ~� ��� ����������? �����, ��� � ���� ������ ���������.~
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~��� ������ ����, ��� �� �������� �������� 12 ����������� ������ � ��������� ��������?~ GOTO 28
  IF ~~ THEN REPLY ~��� ������ ������ ����? ��� �� �������� � ������?~ GOTO 15
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� ������ �������?~ GOTO 16
  IF ~~ THEN REPLY ~���������. ����� ��������� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 9 // from: 0.3
  SAY ~� �� ��������� ��������� ���, ���� �� ��� ������ � ����. � �� ������ ��� ������ � ����, �� �� ����� ������!~
  IF ~~ THEN REPLY ~��������� ����������. ������� ������� ���, �?~ GOTO 8
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 0.3
  SAY ~�����, ������ ������� � ���� ���... � ����� ������, ��� ����� ���� �������� ����������. ������... ��� ����� ��� ������? � ������ ��� ���. �� 1000 �������.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 �������? ������������.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~��� �������������! � �� ��� ������ 250 �������!~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~��� �������������! � �� ��� ������ 250 �������!~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~��� �������������! � �� ��� ������ 250 �������!~ GOTO 20
  IF ~~ THEN REPLY ~� �� ���� ��������� ������� ������ �� ���.~ GOTO 21
  IF ~~ THEN REPLY ~�� ��������� ������ ����?! ����� �� ��� ���� �� �����...~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY ~���?! ��� �� ������ ������������� � ����� ����� �����! ���������� �������� ���� ����� �����, ��� � ������ ����������, � ��� ��������� ��� ������!~
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY ~������. ��������.~ GOTO 24
  IF ~  Global("Talked","LOCALS",1)~ THEN REPLY ~������. ��������.~ GOTO 38
  IF ~  CheckStatGT(LastTalkedToBy,15,STR)~ THEN REPLY ~�������, � �� ����� �������� ����� ����������? ���������.~ GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy,16,STR)~ THEN REPLY ~�������, � �� ����� �������� ����� ����������? ���������.~ GOTO 26
  IF ~~ THEN REPLY ~������! ��� ������� ��� ��� ���������!!!~ GOTO 27
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 0.3
  SAY ~*��������* �� ������ � ��� ���, ����� �������� �������? �����, �����������.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~��������� ����������. ������� ������� ���, �?~ GOTO 8
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 1.2
  SAY ~�, ������, �� ����. ����� ����� ���������! ����� �� �������, ����� ���� �������� ������ �� ������ �� �����... ��, �������, ��� ��������, ����� ��������.~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������� � ������?~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 1.2
  SAY ~��... ��� ������� ������� �����-�� ������ �������� ����� ����. ��� ���������?~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~��� ���������� � �������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 0.3
  SAY ~�, ���� �� ������ ������� ���. ������� ��� ���� ��������� �����. ����. ���� ������ ������� ���������.~
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~��� ������ ����, ��� �� �������� �������� 12 ����������� ������ � ��������� ��������?~ GOTO 28
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� ������ �������?~ GOTO 16
  IF ~~ THEN REPLY ~���������. ����� ��������� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 16 // from: 0.3
  SAY ~� �� ����. �����, �� ����� ���� ��� ������, ��� ��� ��� ������? ���� ����� �����!~
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~��� ��� �� �����, ������ ���.~ GOTO 29
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~��� ��� �� �����, ������ ���.~ GOTO 30
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~��� �� ����� ��������. �� �������� �������� 12 ����������� ������ �� ��������� ��������.~ GOTO 28
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 0.3
  SAY ~��. �� ���� �� ��������� ������ ��� ����������, ����� �����... ���� � ����������, ��� ���� ������ ��� �� ��� ��������. �� ��� ������ ��� �� ���� �������� ����. �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 31 // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 32 // �� 1000
END

IF ~~ THEN BEGIN 18 // from: 0.3
  SAY ~��, ������. � ����� ������, � �� ����, ����� ��� ���� � ����... ��� ����� ��������� ���������� ��� �� ����. �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 48 // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 33 // �� 250
END

IF ~~ THEN BEGIN 19 // from: 0.3
  SAY ~*��������* �� ����� ��� ������ 400 �������?~
  IF ~  PartyGoldGT(399)~ THEN REPLY ~400 �������? ������������.~ GOTO 34
  IF ~~ THEN REPLY ~� ���� ��� �� ��� 400 �������.~ GOTO 35
  IF ~  PartyGoldGT(249)ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�������� 250 �������. ��� ��� ��� ����� ������?~ GOTO 18
  IF ~~ THEN REPLY ~�� ��������� ������ ����?! ����� �� ��� ���� �� �����...~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 0.3
  SAY ~��! ���� -  1000 �������. ���� ��� ��� �� ��������, ��... ������� �� ������, ��� �����.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 �������? ������������.~ GOTO 17
  IF ~~ THEN REPLY ~� �� ���� ��������� ������� ������ �� ���.~ GOTO 21
  IF ~~ THEN REPLY ~�� ��������� ������ ����?! ����� �� ��� ���� �� �����...~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 0.3
  SAY ~�� ��� �! �����, �����, ��� �� �������. ���� 1000 �������, � �� �������� ������.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 �������? ������������.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~��� �������������! � �� ��� ������ 250 �������!~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~��� �������������! � �� ��� ������ 250 �������!~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~��� �������������! � �� ��� ������ 250 �������!~ GOTO 20
  IF ~~ THEN REPLY ~�� ��������� ������ ����?! ����� �� ��� ���� �� �����...~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 0.3
  SAY ~���, ����� ���... ! (��������) ������. ��� ����� ��� ������ �� ����� ��� ������. 250 ������� - � ��� ����.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 �������? ������.~ GOTO 36
  IF ~~ THEN REPLY ~� �� ���� ��������� ������� ������ �� ���.~ GOTO 37
  IF ~~ THEN REPLY ~�������� ����������. ������� ��� ������... ����������.~ GOTO 11
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 0.3
  SAY ~��������. ��������, �� ��� ���������.~
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 0.3
  SAY ~���-�� �����.~
  IF ~~ THEN REPLY ~��������� ����������. ������� ������� ���, �?~ GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 0.3
  SAY ~�... �... ������! ���� �� ���� �������� ���������� � ����� ������� ��� ������, �� ����������! �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // ������ ���������
END

IF ~~ THEN BEGIN 26 // from: 0.3
  SAY ~���. �� ����������� ����������, ��� ���?~
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY ~������. ��������.~ GOTO 24
  IF ~  Global("Talked","LOCALS",1)~ THEN REPLY ~������. ��������.~ GOTO 38
  IF ~~ THEN REPLY ~������! ��� ������� ��� ��� ���������!!!~ GOTO 27
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 27 // from: 0.3
  SAY ~�����! ���������! �������!!! ������, �� ������!!!~
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.3
  SAY ~��... ��, ������ ����, ������! � ������ ��� ����� �� ����!~
  IF ~  Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY ~�������� ������ �� ����������� �� ���������������. �����, ��� �������� ����� ��� ��� �����.~ GOTO 40
  IF ~  !Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY ~�������� ������ �� ����������� �� ���������������. �����, ��� �������� ����� ��� ��� �����.~ GOTO 41
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~�, ��. ������ ��, ��� ������ ����� ������, � ��� �� �������� � ���� ������.~ GOTO 42
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~�, ��. ������ ��, ��� ������ ����� ������, � ��� �� �������� � ���� ������.~ GOTO 41
  IF ~  Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY ~�� ���� �� ������, ����� ��� ������, ������? ��� ��� ������� ��� ������.~ GOTO 40
  IF ~  !Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY ~�� ���� �� ������, ����� ��� ������, ������? ��� ��� ������� ��� ������.~ GOTO 43
  IF ~~ THEN REPLY ~�, ��... ������ �����. ��-��!~ GOTO 44
  IF ~~ THEN REPLY ~�������� ����������. ������� ��� ������... ����������.~ GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY ~��������! � ��� �� ����. ���� ���� �����!~
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~��� �� ����� ��������. �� �������� �������� 12 ����������� ������ �� ��������� ��������.~ GOTO 28
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 30 // from: 0.3
  SAY ~��... ����� ���? �� �... �! � ���� �������� ���-�� ������, ���? �� �����... �������� ������ ����-�� ���! ��� ������! ����� � ������� ������ ����. ��� ��������... � ���� ������� ���� ��� �� �����������!~
  IF ~  CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY ~�� ������������� ������ ��������� ������ �������, ������� ��� �� �����?~ GOTO 46
  IF ~  CheckStatLT(LastTalkedToBy,11,INT)~ THEN REPLY ~�� ������������� ������ ��������� ������ �������, ������� ��� �� �����?~ GOTO 47
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~��� �� ����� ��������. �� �������� �������� 12 ����������� ������ �� ��������� ��������.~ GOTO 28
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 31 // �� 1000
  SAY ~��� -? ��� ���? ��� ������ �������! ���� ��������!!!~
  IF ~~ THEN REPLY ~� ��� �� ���� - ���������� ������� ������!~ GOTO 50
  IF ~~ THEN REPLY ~�� - ���� � ��� ��� ���, ������� ��� ������!~ GOTO 50
  IF ~~ THEN REPLY ~��� ��� ������ - ��� ��������?~ GOTO 50
  IF ~~ THEN REPLY ~�����, �����, � �����.~ GOTO 50
END

IF ~~ THEN BEGIN 32 // from: 0.3
  SAY ~��� ���. ������ � ����������... �� �����, ��� ��� � ���� ����, � ��� �������������.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 0.3
  SAY ~��� ���. ������ � ����������... �� �����, ��� ��� � ���� ����, � ��� �������������.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(250)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.3
  SAY ~�������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 51 // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 52 // �� 400
END

IF ~~ THEN BEGIN 35 // from: 0.3
  SAY ~�� ��� �, ���� � ��� ��� ���� ������ 400 �������, � ����� �� ���� ������. ���������� ��� ������, �� � �� ����� ����.~
  IF ~  PartyGoldGT(399)~ THEN REPLY ~400 �������? ������������.~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������� ������ ����?! ����� �� ��� ���� �� �����...~ GOTO 22
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 36 // from: 0.3
  SAY ~�������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 48 // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 33 // �� 250
END

IF ~~ THEN BEGIN 37 // from: 0.3
  SAY ~����... � ��� ���, ������ ��� ������? �� ��������� �����? �� ��� �����, � �� ����� ������� ����. � ����� ������, ��� ��� ������.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 �������? ������.~ GOTO 36
  IF ~~ THEN REPLY ~�������� ����������. ������� ��� ������... ����������.~ GOTO 11
  IF ~~ THEN REPLY ~��������. � �����.~ GOTO 23
END

IF ~~ THEN BEGIN 38 // from: 0.3
  SAY ~���-�� �����. � ������ ������� ��� ��������� ������! ��� ��� ������ �� �����. �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // ������ ���������
END

IF ~~ THEN BEGIN 39 // from: 0.3
  SAY ~��� ���. ������ � ����������... �� �����, ��� ��� � ���� ����, � ��� �������������.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 0.3
  SAY ~� ���! �... �... ������ ������� ������! � �� ���� ������ ������ ����������������! �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // ������ ���������
END

IF ~~ THEN BEGIN 41 // from: 0.3
  SAY ~��� ����� ������� ����, ������� ��� ����������� �������. � �� �� ������� �� ������, ��� �� �������� � ���������!~
  IF ~~ THEN REPLY ~��� ������ ������ ����? ��� �� �������� � ������?~ GOTO 15
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� ������ �������?~ GOTO 16
  IF ~~ THEN REPLY ~���������. ����� ��������� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 42 // from: 0.3
  SAY ~���?! ��... ��� ��� ��� ������?~
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY ~������, ��� �������� ���������� ����, ���� ������ �� ��������.~ GOTO 53
  IF ~  CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY ~������, ��� �������� ���������� ����, ���� ������ �� ��������.~ GOTO 54
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~������, ��� �������� ��������� ������... ��� ������� ������.~ GOTO 55
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~������, ��� �������� ��������� ������... ��� ������� ������.~ GOTO 56
  IF ~  Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY ~������, ��� �������� ��� ����������. ��������~ GOTO 57
  IF ~~ THEN REPLY ~�����, ��� ������� ������� ��� � ������������. ������ ����, �� �� ����� ��� ���, ��� �� ������.~ GOTO 58
  IF ~~ THEN REPLY ~��, ������. �������� ��� �����.~ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 0.3
  SAY ~�� �������� ������! ���� ���� ����� ����� � �����������, *������*, �� ����� ���� ���� �����, �� �� ���������!~
  IF ~~ THEN REPLY ~��� ������ ������ ����? ��� �� �������� � ������?~ GOTO 15
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� ������ �������?~ GOTO 16
  IF ~~ THEN REPLY ~���������. ����� ��������� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 44 // from: 0.3
  SAY ~���, � ���������� �� ������ ��� ��������.~
  IF ~~ THEN REPLY ~��� ������ ������ ����? ��� �� �������� � ������?~ GOTO 15
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� ������ �������?~ GOTO 16
  IF ~~ THEN REPLY ~���������. ����� ��������� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 45 // from: 0.3
  SAY ~��! ��� ����� ��� ����, �� ��� ��?! ���� ������ ��� ��������� ����, ���� ���-�� ������ ������� ���! � ������ �� ��� �����, ��� ��� ������������� ������ ����? ����� ����, �� �� ������ <MALEFEMALE>, � ���! �� ��� �, �������� ��� �������� ���. ������!!!~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 0.3
  SAY ~�� �����. ��� �������� ���������� ����. � ����� ��� ������, ����� �� ������� ��� ��� � ����. �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // ������ ���������
END

IF ~~ THEN BEGIN 47 // from: 0.3
  SAY ~��! � ��������� ������� ������� ������� � �� ������ ����, ������ ��. ������ ������ ���.~
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END
  
IF ~~ THEN BEGIN 48 // �� 250
  SAY ~��� -? ��� ���? ��� ������ �������! ���� ��������!!!~
  IF ~~ THEN REPLY ~� ��� �� ���� - ���������� ������� ������!~ GOTO 45
  IF ~~ THEN REPLY ~�� - ���� � ��� ��� ���, ������� ��� ������!~ GOTO 45
  IF ~~ THEN REPLY ~��� ��� ������ - ��� ��������?~ GOTO 45
  IF ~~ THEN REPLY ~�����, �����, � �����.~ GOTO 45
END

IF ~~ THEN BEGIN 49 // from: 0.3
  SAY ~��� -? ��� ���? ��� ������ �������! ���� ��������!!! ��! ��� ����� ��� ����, �� ��� ��?! ���� ������ ��� ��������� ����, ���� ���-�� ������ ������� ���! ����������!~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)SetGlobal("Ring_Is_Stolen","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 50 // �� 1000
  SAY ~��! ��� ����� ��� ����, �� ��� ��?! ���� ������ ��� ��������� ����, ���� ���-�� ������ ������� ���! � ������ ��� ������ �����, ��� ��� ������ ���� ������ ���? ��� �... � ������ ��� ��� �������! � ������� ���� ������ ����!~
  IF ~~ THEN REPLY ~��� ��������!~ GOTO 60
  IF ~~ THEN REPLY ~������������ ���... ������� ��� ������. ����������.~ GOTO 61
  IF ~~ THEN REPLY ~�����, �������� ������ ����.~ GOTO 62
END

IF ~~ THEN BEGIN 51 // from: 0.3
  SAY ~��� -? ��� ���? ��� ������ �������! ���� ��������!!!~
  IF ~~ THEN REPLY ~� ��� �� ���� - ���������� ������� ������!~ GOTO 63
  IF ~~ THEN REPLY ~�� - ���� � ��� ��� ���, ������� ��� ������!~ GOTO 63
  IF ~~ THEN REPLY ~��� ��� ������ - ��� ��������?~ GOTO 63
  IF ~~ THEN REPLY ~�����, �����, � �����.~ GOTO 63
END

IF ~~ THEN BEGIN 52 // from: 0.3
  SAY ~��� ���. ������ � ����������... �� �����, ��� ��� � ���� ����, � ��� �������������.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 0.3
  SAY ~�, ���! ��� ������ ����! �� ��� �, ���� ��-������! ������ ������� ������... �� �������� ��� � �����! �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // ������ ���������
END

IF ~~ THEN BEGIN 54 // from: 0.3
  SAY ~�� �������� ������! ���� ���� ����� ����� � �����������, *������*, �� ����� ���� ���� �����, �� �� ���������!~
  IF ~~ THEN REPLY ~��� ������ ������ ����? ��� �� �������� � ������?~ GOTO 15
  IF ~~ THEN REPLY ~���������. ����� ��������� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 55 // from: 0.3
  SAY ~�, ������������! � ����� ���� ����� �����, ��... ��. ��������. (��������) ��� �� ���������. �����... �����, ��� �������� ������� ������. �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // ������ ���������
END

IF ~~ THEN BEGIN 56 // from: 0.3
  SAY ~�� �������� ������! ���� ���� ����� ����� � �����������, *������*, �� ����� ���� ���� �����, �� �� ���������!~
  IF ~~ THEN REPLY ~��� ������ ������ ����? ��� �� �������� � ������?~ GOTO 15
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 57 // from: 0.3
  SAY ~� ���! �... �... ������ ������� ������! � �� ���� ������ ������ ����������������! �������� �������...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // ��� ������
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // ������ ���������
END

IF ~~ THEN BEGIN 58 // from: 0.3
  SAY ~�... �����, ��� �� �����. ��� �� ����� ������� � ��� �������. ����� � ������� ������ ����. ��� ��������... � ���� ������� ���� ��� �� �����������!~
  IF ~  CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY ~�� ������������� ������ ��������� ������ �������, ������� ��� �� �����?~ GOTO 46
  IF ~  CheckStatLT(LastTalkedToBy,11,INT)~ THEN REPLY ~�� ������������� ������ ��������� ������ �������, ������� ��� �� �����?~ GOTO 47
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 59 // from: 0.3
  SAY ~��� ����� �����, ������ ��.~
  IF ~~ THEN REPLY ~��� ������ ������ ����? ��� �� �������� � ������?~ GOTO 15
  IF ~~ THEN REPLY ~� �� ��������� � ���� �������. ������� ��� ������... ����������.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~�����, �� ����� �� ��������� � ���� ������.~ GOTO 10
  IF ~~ THEN REPLY ~���������. �������� ����. �� ��� ����� ��� ����� �������� � ��� ���-��� ���.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 23
END

IF ~~ THEN BEGIN 60 // �� 1000
  SAY ~������? �� �������� �� ���� � ���������! � ���� ������ ��� ������ ��� ������ ������ - � � ����, ��� � �� ���� � ���� ��������!~
  IF ~~ THEN REPLY ~������������ ���... ������� ��� ������. ����������.~ GOTO 61
  IF ~~ THEN REPLY ~�����, �������� ������ ����.~ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 0.3
  SAY ~��� �� ������ ����� ����� ����� �������� ���! � �������� ��� ����, ������� �� ����� �� ��������! ������!!!~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)TakePartyGold(1000)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 62 // �� 1000
  SAY ~���������! � ������ ��� �� ����� ����. �����, ��� �� ����� ����������, ��� �����.~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Talked","LOCALS",1)TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 63 // �� 400
  SAY ~��! ��� ����� ��� ����, �� ��� ��?! ���� ������ ��� ��������� ����, ���� ���-�� ������ ������� ���! � ������ ��� ������ �����, ��� ��� ������ ���� ������ ���? ��� �... � ������ ��� ��� �������! � ������� ���� ������ ����!~
  IF ~~ THEN REPLY ~��� ��������!~ GOTO 64
  IF ~~ THEN REPLY ~������������ ���... ������� ��� ������. ����������.~ GOTO 65
  IF ~~ THEN REPLY ~�����, �������� ������ ����.~ GOTO 66
END

IF ~~ THEN BEGIN 64 // �� 1000
  SAY ~������? �� �������� �� ���� � ���������! � ���� ������ ��� ������ ��� ������ ������ - � � ����, ��� � �� ���� � ���� ��������!~
  IF ~~ THEN REPLY ~������������ ���... ������� ��� ������. ����������.~ GOTO 65
  IF ~~ THEN REPLY ~�����, �������� ������ ����.~ GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 0.3
  SAY ~��� �� ������ ����� ����� ����� �������� ���! � �������� ��� ����, ������� �� ����� �� ��������! ������!!!~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)TakePartyGold(400)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 66 // �� 400
  SAY ~���������! � ������ ��� �� ����� ����. �����, ��� �� ����� ����������, ��� �����.~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Talked","LOCALS",1)TakePartyGold(400)~ EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)CheckStatGT(LastTalkedToBy,14,CHR)Global("Ring_Is_Stolen","LOCALS",0)~ THEN BEGIN 67 // from:
  SAY ~�! ����������� ����������. �� ������ ������ ����� ����? �����, ��� ������ ��� � ������.~ [JADALE50]
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)Global("Ring_Is_Stolen","LOCALS",0)CheckStatLT(LastTalkedToBy,10,CHR)~ THEN BEGIN 68 // from:
  SAY ~�! ����������� ����������. �� ������ ������ ����� ����? �����, ��� ������ ��� � ������.~ [JADALE52]
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~� ���� ���������� � ���� � ������ ����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ��?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 7
END

// -------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("Ring_Is_Stolen","LOCALS",1)Global("Give","LOCALS",1)~ THEN BEGIN 69 // from:
  SAY ~� ���������: ��� ������ �� � ��� ��������. �������, �� ������, ��� �����?~
  IF ~~ THEN EXIT
END


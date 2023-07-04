// ������ ����� ���� ������ �������   ���� ����� ���� ������� ������ ����������. �� ��� ����� ���������� �����, ��������, ����-�� ����.

BEGIN ~BERTRAN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("QuestBroken","LOCALS",0)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~����������� ���, �����������. �������� ��� ��� �������������, �� ���� �������� �� �������� ��� �������. �� ��� �� ��� ������? � �������. �������� ��� ��� �������������. �� � ���� ���� �������, ���... ��, �� ����� ���������� ��� ������ ����������.~
  IF ~~ THEN REPLY ~���� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~�� ������ ��� ��� �������. ��� ��� �����?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� �����, ��� ���� ������ �� �����. �� � ������ �������� ���� ����� � ���� ��������, � � ���� ���� �������, ��� �� �������� ����.~
  IF ~~ THEN REPLY ~���������� � ����� �����.~ GOTO 4
  IF ~~ THEN REPLY ~�� �� ������, ���-������ �����, ��� ����� ������ �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� ������������ ���������� �����? ��� �� ����� ����?~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��� ����� ����, �� �� ��� ���� ������, �� � ������������� ��������� � ���������� ���������. � ��� ������ �����. �� � ��� �������� ���� ����� � ���� ��������.~
  IF ~~ THEN REPLY ~���������� � ����� �����.~ GOTO 4
  IF ~~ THEN REPLY ~�� �� ������, ���-������ �����, ��� ����� ������ �����?~ GOTO 5
  IF ~~ THEN REPLY ~��� ������������ ���������� �����? ��� �� ����� ����?~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~����� ��� ����������� ����. ���� �� ���������, � ������� � ����� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~��� ����� ������, ������ �������. ��� �� ����� �����������. �� ����� �� ���� ��������, � � ���� ���� ���� ����� �������������� �������.~
  IF ~~ THEN REPLY ~��� ����� � ����� ������ �� ����������.~ GOTO 7
  IF ~~ THEN REPLY ~������ �����, �� ����� �� �����.~ GOTO 8
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~������? �����, �� ��� �����? ��� �������?~ GOTO 9
  IF ~~ THEN REPLY ~�������������� �������? �����, ��� ����� ����� ���.~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~�� ������ ������ ��������� ����� ������, ����������� � ����� �� �����. ��� ����� ���������, �� ���� ���� ������� ������ ��� ����������� �����. ������ ���� ������ ���������� ������ ��-�� ����. �� �������� - �� ����� ������ ������ ������ � �����.~
  IF ~~ THEN REPLY ~���������� � ����� �����.~ GOTO 4
  IF ~~ THEN REPLY ~��� ������������ ���������� �����? ��� �� ����� ����?~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~������ �����, �� ���������� ������ ����. �������, "������� ����" ������ ��������, �� �����, ������� �� ����� ��������� ��� �����.~
  IF ~~ THEN REPLY ~���������� � ����� �����.~ GOTO 4
  IF ~~ THEN REPLY ~�� �� ������, ���-������ �����, ��� ����� ������ �����?~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~����� ����... �� �����, � ��� ��� � �������. �� � ��� ��� ����������, � ����� ������.~
  IF ~~ THEN REPLY ~�����, �� ��� ��������.~ GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��� ����� ����, �� ����� ����� ���. ��� ���� ����� ���...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��! �� �����! ��� ���� ���, �� �����, ��� ������� ��� �����!~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~�� ����� �� ������. �� ����� �������, � � ������ ������� ������ ������, ��� ����� ������ ������������.~
  IF ~~ THEN REPLY ~�����, �� ��� ��������.~ GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��� ����� ����, �� ����� ����� ���. ��� ���� ����� ���...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��! �� �����! ��� ���� ���, �� �����, ��� ������� ��� �����!~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY ~��, ��� �� ���� ������. ��� �� ��� ������?~
  IF ~~ THEN REPLY ~�����, �� ��� ��������.~ GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��� ����� ����, �� ����� ����� ���. ��� ���� ����� ���...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��! �� �����! ��� ���� ���, �� �����, ��� ������� ��� �����!~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY ~�� ������� ������������ � ���� � ����� ������ ��������, ��� � ���. �� ������ ��������, �� �� ������ ������� ����� ����������. ����� ��� ����������� ����. ���� �� ���������, � ������� � ����� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY ~� �� ����������. �� ������ ��� � ���� ������������. ����� ��� ����������� ����. ���� �� ���������, � ������� � ����� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY ~���... ����� �� ����� ����. � �� ���� ����� ������. � � �� ������, ���� ������������ ������� �� ����� ��� ����.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~������� ���, �� ��� �����. ��� �������� �������� ��� �� �����.~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~������� ���, �� ��� �����. ��� �������� �������� ��� �� �����.~ GOTO 15
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~(�������� �������) ��� �������� ��� ����. ����������, ��� � ���� ��� �������.~ DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~(�������� �������) ��� �������� ��� ����. ����������, ��� � ���� ��� �������.~ GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(�������� �����) �� ������� ���� �����? �� ��� �� ��� ����.~ GOTO 18
  IF ~~ THEN REPLY ~�� ������, �� ����, ������. ��� ����, �� � � ������.~ GOTO 19
  IF ~~ THEN REPLY ~��� �� ����� �������� ������.~ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 7.3
  SAY ~�� �������� ���� ���� � ����� ������ ������. � �� ������ ���, ���� �� ����� ��� ���� ������������ �������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~������� ���, �� ��� �����. ��� �������� �������� ��� �� �����.~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~������� ���, �� ��� �����. ��� �������� �������� ��� �� �����.~ GOTO 15
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~(�������� �������) ��� �������� ��� ����. ����������, ��� � ���� ��� �������.~ DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~(�������� �������) ��� �������� ��� ����. ����������, ��� � ���� ��� �������.~ GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(�������� �����) �� ������� ���� �����? �� ��� �� ��� ����.~ GOTO 18
  IF ~~ THEN REPLY ~�� ������, �� ����, ������. ��� ����, �� � � ������.~ GOTO 19
  IF ~~ THEN REPLY ~��� �� ����� �������� ������.~ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY ~���� ����� ������ ��������. ����� ��������. �������� ��� ��� ��������. ���������, ����� ��������! �� �����... ����� ��� � ��� �� ���������? ����� � ���� ������ �� ����? � ���� ������ ���� ���� ��������� ��������... �����. ��� �� ����� �������� �������� ��� �������.~
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~��� ������� ����� ��� ����. � ���� ������ �� ���.~ GOTO 21
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~��, ��� ���� � ����. ������� ��������� ����.~ GOTO 22
  IF ~~ THEN REPLY ~��� �� ����� �������� ������.~ GOTO 20
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY ~���, ��� ����� ������� ��������������! ��������� ��� ����, � � ��� ������. � �� ��� ��� � ���� ������ � ��, ��� �� ��� ��������!~
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~(�������� �������) ��� �������� ��� ����. ����������, ��� � ���� ��� �������.~ DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~(�������� �������) ��� �������� ��� ����. ����������, ��� � ���� ��� �������.~ GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(�������� �����) �� ������� ���� �����? �� ��� �� ��� ����.~ GOTO 18
  IF ~~ THEN REPLY ~�� ������, �� ����, ������. ��� ����, �� � � ������.~ GOTO 19
  IF ~~ THEN REPLY ~��� �� ����� �������� ������.~ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY ~�� ������������������ ��� ����� ��� ���� �������� � ������. �... ��� �������� ��� ��������. �... � � ������ ��� �����, ��� �� ���-�� �����. � ��... ���� �� �� ����� �����������? � ��� ���� ��� �������... � �� ���� �� ��� ����-������ ���? � ���� ���� ��������� ��������, ������� � ������� ��� �������.~
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~� ���� ��� ���� �����.~ GOTO 18
  IF ~~ THEN REPLY ~� ���� ��� ������ ��� �����.~ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 12.4
  SAY ~���, � �� ����� �����. �����, � ���� � ��� �������, �� ������� ��� �� ���������. ���, �� ����� ������������ ���� ������. � ���� �������� �� ���� �� �����. ���� �� ������ ������� ���� � ��� ������, ��������� ��� ��������� �����, ������� �� �����, ��� ��������. �� �� ������� �� ��������� � ���. �� ��� ��� � �������� ���� ��������.~
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(�������� �����) �� ������� ���� �����? �� ��� �� ��� ����.~ GOTO 18
  IF ~~ THEN REPLY ~�� ������, �� ����, ������. ��� ����, �� � � ������.~ GOTO 19
  IF ~~ THEN REPLY ~��� �� ����� �������� ������.~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 12.5
  SAY ~����... ���� ����� - ��������� �������� ����� �����... �� �� ������� �� ��������� � ���. ������ ����, �� ����. ��� �������� �������� ���. ��������...~
  IF ~~ THEN REPLY ~������� ��������� ����.~ GOTO 24
  IF ~~ THEN REPLY ~���, �������� �����.~ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 12.6
  SAY ~� �� �� ��� �� ������, ���� �� ����� ��� ����. �� ���, � ����, ������ ���������. �� ����������. �����. � �������� � ����� ���� ����������. ��� ����� ���������� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.7
  SAY ~���� ����� ���� �� �������. � �� ������ ��, ���� �� ����� ��� ����. �� ������. ����������, ��������� ��� ���������� ������. ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.1
  SAY ~� �� ���� ��������...~
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~� ���� ��� ���� �����.~ GOTO 18
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY ~� ���� ��� �������. �������� ���.~ GOTO 28
  IF ~~ THEN REPLY ~������-��, ��� ���� ������. � ���� ��� ��� �����.~ GOTO 26
END

IF ~~ THEN BEGIN 22 // from: 14.2
  SAY ~����? ������� ������ �����... �� ������ �������� � ���� ������ �� ���� ����� ��������� �����? ��� �� �� �� ��������...~
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY ~� ���� ��� �������. � ����� ��� ���.~ GOTO 28
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY ~� ������ ������� �� ��� �������.~ GOTO 27
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~� ���� ��� �����. ������ ������ ������� ���.~ GOTO 25
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~� ���� ��� �����. �����, �� �� ���� ������ ���������.~ GOTO 24
  IF ~~ THEN REPLY ~������-��, ��� ���� ������. � ���� ��� ��� �����.~ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 16.1
  SAY ~��� ����� �������. �������� ���� ������� � ���� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 22.4
  SAY ~��� �, ������, � ���� ��� ������. ���� � ���� �������� ���� ��������� ��������, ������� ������ � ����� ��� ���� � ���� �������� ���, �����, ��� �������� ���������. ��� �, ��� � ����. ����� ��� ��� ��� �����������. � ���� ���� 600 �������. �� ������ �� ������. �������, ����� ����� ����������?~
  IF ~~ THEN REPLY ~����� ������ ������. �������� �����.~ GOTO 29
  IF ~~ THEN REPLY ~����� ������������. � ������ ��������.~ GOTO 30
END

IF ~~ THEN BEGIN 25 // from: 18.2 22.3
  SAY ~��������� ���. ����� ��� �� ������, ��� ���� ������� ����. ���� �� �������� ����������� �� ��, ��� �������� ���� ��������... ��� ���� �� ������. ��� ��� - ������������, ��� ��������� ��� �� ������. � ���� ������ �� �������� ������, �� � ��������� ���. � ������, ����������, �������� ���� ������� � ����� �������.~
  IF ~~ THEN DO ~TakePartyItem("MarcusS")DestroyItem("MarcusS")AddexperienceParty(50000)SetGlobal("Staff","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY ~��� ����� �������� �����. �������� ���� ������� � ���� �����. ������ � ���� �� ������ �������� �� ����� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY ~�������. ��� �, ������, ���� � ���� ������� ��������� �����, ���������� ���� ������, ��� �������� ���������. �� ��� �, ������. � ���� ���� 400 �������. �� ������, � �� ������. �������, ����� ����� ����������?~
  IF ~~ THEN REPLY ~����� ������ ������. ��������� ���� �������� ������.~ GOTO 31
  IF ~~ THEN REPLY ~���, ����� ������������.~ GOTO 32
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY ~��������� ���. �� ������� ����, ��� ������� �����-�� ��� �����. ��� ��� �� �������, ��... ���� �� ���-��.~
  IF ~~ THEN DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.1
  SAY ~�������� ���� ��������� ������� ������! ���� ��� �� ����������!~
  IF ~~ THEN DO ~TakePartyItem("MarcusS")DestroyItem("MarcusS")GiveGoldForce(600)AddexperienceParty(20000)SetGlobal("Staff","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.2
  SAY ~����������, � ���� ������ ������ ���! ������! � �� ��������� � ���� �����������! � ���� 600 �������! ������ ��� ���, �� ����������� ����������� ���� ����!~
  IF ~~ THEN REPLY ~����� ������ ������. �������� �����.~ GOTO 29
  IF ~~ THEN REPLY ~��� �, ����� �� ������ �� ��������.~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY ~�������� ���� ��������� ������� ������! ���� ��� �� ����������!~
  IF ~~ THEN DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")GiveGoldForce(400)SetGlobal("Journal","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY ~� ���� ������ ������ ���! � �� ���� �� ���� �����������! �������� �� ��� ��� ���, �� ����������� ����������� ���� ����!~
  IF ~~ THEN REPLY ~����� ������ ������. ��������� ���� �������� ������.~ GOTO 31
  IF ~~ THEN REPLY ~��� �, ����� �� ������ �� ��������.~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY ~����� ����� ������, ������! ������ �����! �������, � ������ ��� ���� ����� ������������ ��� ����� �����!~
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)~ EXIT
END

// -------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)~ THEN BEGIN 34 // from:
  SAY ~������� ������� ����������� ����. � ��������� �����, � �������� �����, � ���� ������ �����.~
  IF ~~ THEN REPLY ~���������� � ����� �����.~ GOTO 4
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��� ����� ����, �� ����� ����� ���. ��� ���� ����� ���...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~��! �� �����! ��� ���� ���, �� �����, ��� ������� ��� �����!~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

// -------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)OR(2)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)OR(2)!Global("Journal","LOCALS",0)!Global("Staff","LOCALS",0)~ THEN BEGIN 35 // from:
  SAY ~�����������... ����� �� ������ � ������������, ���� � �� ����, ������ � �����... ������ � ����, ��� �� �����... ������ ����� ����� ���������. � ����, ��� �� �����. � ������... �� ���� ��� ��������. �� ���� ���������.~
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~��� ������� ����� ��� ����. � ���� ������ �� ���.~ GOTO 21
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~��, ��� ���� � ����. ������� ��������� ����.~ GOTO 22
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

// -------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)!Global("Journal","LOCALS",0)!Global("Staff","LOCALS",0)~ THEN BEGIN 36 // from:
  SAY ~��� �� ������ ��������, �������, �� ������ � ���� ������� ��� ����. ��� ���� ��� ������� ���������, ���������?~
  IF ~~ THEN EXIT
END

// -------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",1)~ THEN BEGIN 37 // from:
  SAY ~�������, ������? ������ � ����� ������ ���, ����� ������ �������? ������, ��� ��� ���� �� ����� �� ����� ������� � �� �����, �� ��� �������� ����.~
  IF ~~ THEN EXIT
END


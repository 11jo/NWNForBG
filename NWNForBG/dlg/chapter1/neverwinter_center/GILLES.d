// ����� ������������ ����� ������� �����   ������   ��������� ������, ������ �������� ��������� ������. ���� ������� ��������� ����������� �������, ������� �������� �� ���� ��������������. ��� �������� ������ ���������� �������� ��� �� ��������� �����������.

BEGIN ~GILLES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)Global("GillesQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�� ���� ��� � ����� �����. � ������, �� �� ���������� � ������? �� �������? ������������� �������?~
  IF ~~ THEN REPLY ~� �������� ���. ��� �� ������ �������?~ GOTO 1
  IF ~~ THEN REPLY ~������, �� ���� �� ��� ������� ��� �����, �� ���������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, ��� �������. ��! � ������ �� �� ��� �� ������. ������ �� �� ������� � ��������? ���, ��� ��� ���� �����.~
  IF ~~ THEN REPLY ~� ����� ��, ��� �����. ��� �� �����������?~ GOTO 4
  IF ~~ THEN REPLY ~� �� ����� ������ �������!~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, ����� ������ �����! ������� �� ������ ���� ��� �������? �� ������ ������� � ��������? ��� �� ���� �� ����������� ������������ ����? ���������.~
  IF ~~ THEN REPLY ~� ����� ��, ��� �����. ��� �� �����������?~ GOTO 4
  IF ~~ THEN REPLY ~� �� ����� ������ �������!~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�����. ������ ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~��� "��������������" ���� ��������� ���� �����. ������ ������ ��... ����� ���-�� ���������. ���-��, ��� ��������� �� ���������� ����. ���� ����� ������. ��� ����� ���, ��� ��� �������� ������� ������� � ��������� ��, ��� ��� ����� ��������. �� ���� ���������? �� �������� �� ������ ������ � �������� ����� �����-�� ������, � � ��� - ���������. ���� ������ ����� �������� ��� �����.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~������, ����������� ����������� ��������� ���� ����� ��������. �����������, ����� �������� ���� �� ���������� � ���� � ������, <GIRLBOY>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~��� �������� ������� ������ ����� �� ����������� ������ ������, ��������, �� ����� ��������� �� ����. � ���� ���, �� �� ���� ����������.~
  IF ~~ THEN REPLY ~�� ������, ����� � ������ �� ���, � �� ������?~ GOTO 7
  IF ~~ THEN REPLY ~���� �� ����� �������� �� ��� ����������. ��� ��� �������.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~����� � ��� ����������� �� ����� �������������, ��� ��� �������� ������� ����. �������� ����, ��� ��� ����� ��������� ����� �������. ��� ��������� �� ������ ������� �� � ����. ��������� ��� ���, � �� ������, �� ���� �� �������� ������� ������ �����.~
  IF ~~ THEN REPLY ~� ���� �� �����, ��� � ������� �� ������?~ GOTO 9
  IF ~~ THEN REPLY ~� ��� ������ ���������� ������?~ GOTO 10
  IF ~~ THEN REPLY ~� ������� ��������� ���, � �� ������.~ GOTO 11
  IF ~~ THEN REPLY ~��� ��� �����������.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY ~������ ���������� �������, ����� ���� ��������� ��������. ��� �� ��������, �������, ��� �� ������� ���� ��� ���.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~� ���� ���� ����� �� ����� ������. �������, � ��� ���� ������ �� ������, � ������� ��� �������� �������� ��� �����. ���� ����������, �������� �� �� �� ��� ���� ����, ��� ���� ������. ���� ���� ������, �� � ��� ������. ����� ������. ����� ����, � ��� �� ��������� �� �����������. �� ����� �����, ��� ��. �� �������� ����, ��� ����.~
  IF ~~ THEN REPLY ~�� ��� � ������, � �� ����� ���������?~ GOTO 13
  IF ~~ THEN REPLY ~� ������� ��������� ���, � �� ������.~ GOTO 11
  IF ~~ THEN REPLY ~��� ��� �����������.~ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY ~�������� ������� ������������ �������� � ����, ��� ��������� ����. ��� ���������� �������, ����� ��� ��������� �������. ��� �������... ���� - �� �� ��� ����, ���� �� ����� ���� �������� ���� ���, ��� ������ ������� ������. ������ - ��� ���������� ����� � ������, �� ������ �������. �� ����� �������� � �������, ����� ��� ����� ���, ����� �� ������ ������ �����.~
  IF ~~ THEN REPLY ~� ���� �� �����, ��� � ������� �� ������?~ GOTO 9
  IF ~~ THEN REPLY ~� ������� ��������� ���, � �� ������.~ GOTO 11
  IF ~~ THEN REPLY ~��� ��� �����������.~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~�� �������! �� �� ���������, ��������� ����� ��� ������, � ��� ���������� ��� �� �����. � ��� � ��� ����. ��������� ��� �� "������ ���������". �� �������� � ���������. ���� ������� ��������� �������� ��� ������ ������.~
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY ~�-��! �� ��� ����� ������ ��� �� �����! �� ���� ��� ���������, ������ ���, ����� ����� ��� ����������. � ������� �����. ������, ���� �� ������, � � �������.~
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY ~� ����������� ���-����� �� ����. ���� ���������� ���� � ������ �� ���. �������, ��� ����� ���������. ��� ��� ������ �� �����������. �����, �� ����. �� ����� �� ������������, ����� � ���������� ���, ����� ��������� �������.~
  IF ~~ THEN REPLY ~��� ������������! ����� ��� ���� ��������, ������ ��!~ GOTO 14
  IF ~~ THEN REPLY ~� ������� ��������� ���, � �� ������.~ GOTO 11
  IF ~~ THEN REPLY ~��� ��� �����������.~ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~������ ��������, ������, ������ ������ �� �������� �� ���! ��������� � �� ����, ��� �������� �� ���! ��������� � ������ � ��������� ���! �������!~
  IF ~~ THEN REPLY ~����� ��� ����, ������� �������!~ GOTO 15
  IF ~~ THEN REPLY ~� ������� ��������� ���, � �� ������.~ GOTO 11
  IF ~~ THEN REPLY ~��� ��� �����������.~ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY ~��! ��������! �����! �������� ���� ����������, ���� ������ � ������ ����������� ����, ���� �� ��������� ���� ����!~
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",9)GiveItem("Nwmisc18",LastTalkedToBy(Myself))EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",0)Global("GillesQuest","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY ~����� ����� �������, ��� ������ ��������, � ��� ������� ��������.~
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("OleffQuest","GLOBAL",0)!Global("OleffQuest","GLOBAL",2)Global("GillesQuest","GLOBAL",1)~ THEN BEGIN 17 // from:
  SAY ~������������ ��� ���. ��� ���-������ ���������? �������, �� �� ������� ���������� �� ��� �������� ��� �������. �� ����� ��������� ������� ������? �������������� ������ ��� ����� �����. ��� �� ������� ���� ����������.~
  IF ~  OR(3)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")~ THEN REPLY ~� ���� ���� ��������, ������ � ����� �� �����.~ GOTO 18
  IF ~~ THEN REPLY ~���������� ��� ���, ��� ����� ������.~ GOTO 19
  IF ~~ THEN REPLY ~�����, �����, � ������ ��� �������.~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY ~�� ��� ����� ����, ������! � �� �� �������� ���� �����!~
  IF ~  PartyHasItem("Nwmisc15")~ THEN REPLY ~���������� � ���, ��� ����� ������� ������� ������.~ GOTO 22
  IF ~  PartyHasItem("Nwmisc16")~ THEN REPLY ~����������, ��� ����� ������ ������� ������� ������.~ GOTO 23
  IF ~  PartyHasItem("Nwmisc17")~ THEN REPLY ~����������, ��� ��� ������ ������ ������ ����.~ GOTO 24
  IF ~~ THEN REPLY ~������, ��� ���� �����.~ GOTO 34
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY ~�� �������� �� ������ ������ � �������� ����� �����-�� ������, � � ��� - ���������. ���� ������ ����� �������� ��� �����. ��� �������� ������� ������ ����� �� ����������� ������ ������, ��������, �� ����� ��������� �� ����. � ���� ���, �� �� ���� ����������. ����� � ��� ����������� �� ����� �������������, ��� ��� �������� ������� ����. �������� ����, ��� ��� ����� ��������� ����� �������.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~��� ��������� �� ������ ������� �� � ����. ��������� ��� ���, � �� ������, �� ���� �� �������� ������� ������ �����.~
  IF ~  OR(3)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")~ THEN REPLY ~� ���� ���� ��������, ������ � ����� �� �����.~ GOTO 18
  IF ~~ THEN REPLY ~�����, �����, � ������ ��� �������.~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY ~�� ���������� ���, ���� � ��� ��� ������� �������� ��� ����������� ������! �� ����������� �� ����!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1
  SAY ~�� � ��������! ��� ������� ������ �� �������� �� ��������� �������� �����������  � ��������. ����� ���������� ��������!~
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 25
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 25
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 26
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 27
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 18.2
  SAY ~������� ������ ������� ������! �� ���� �������� �� �������. ��� ������� ���������, ��� ��������� �� ���� ����� �������. ��������, �� �������� ��� � ������ � ������� ��������� ��������. ��� ��� ��������.~
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 28
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 28
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 29
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 30
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 18.3
  SAY ~���-���, �� ����� ������ �� ������� ���������� ���? � ��������, ����� ���... ���� ���������� ���������� �������.~
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 31
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 31
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 32
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 33
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 22.1 22.2
  SAY ~���, �������� 2000 �������. ��� ������� ������, ��� ����� ���� �����, � � ���� ��������� ���! ����� �������! ��� ������� �� ������ � �������! ����� ������ ��� �������� �������! �� ������� ��� �� ���. ���� ��� ���������. ��������� �� ���, � � ��� ��� ������� ������, ������� �������� ���� ������ ����! � ������� ��� ������, ����� ����� ������� ���!~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY ~������! ��� �������  �� ������� ��� ����! ��� �� �� ����� ��� �������, ��� ������-������� ������ ��������� �� �������! �������� ��� 4000 ������� � �������, ��� ������ ����� ��� �������� ������. ��� ���, ���� �� ��������!~
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.4 22.5
  SAY ~���, �������� 2000 �������. � ���� �������, ���� �� ����� ������������! ��, ��� ��������� ��������� ������ � ������ - ��������� ���� ����! ��������, ��� ���� ������� � ����� ������� �������� ���� �������, �� ��� ���� �� ������. � ��������, ����� ������������� ������ ������������ ��, ��� � ��� ��� ����, ����� ������� �������-����������� ����. �������� � ���� ����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1 23.2
  SAY ~���, �������� 2000 �������. ��� ������� ������, ��� ����� ���� �����, � � ���� ��������� ���! ����� �������! ��� ������� �� ������ � �������! ����� ������ ��� �������� �������! �� ������� ��� �� ���. ���� ��� ���������. ��������� �� ���, � � ��� ��� ������� ������, ������� �������� ���� ������ ����! � ������� ��� ������, ����� ����� ������� ���!~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3
  SAY ~������! ��� �������  �� ������� ��� ����! ��� �� �� ����� ��� �������, ��� ������-������� ������ ��������� �� �������! �������� ��� 4000 ������� � �������, ��� ������ ����� ��� �������� ������. ��� ���, ���� �� ��������!~
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.4 23.5
  SAY ~���, �������� 2000 �������. � ���� �������, ���� �� ����� ������������! ��, ��� ��������� ��������� ������ � ������ - ��������� ���� ����! ��������, ��� ���� ������� � ����� ������� �������� ���� �������, �� ��� ���� �� ������. � ��������, ����� ������������� ������ ������������ ��, ��� � ��� ��� ����, ����� ������� �������-����������� ����. �������� � ���� ����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1 24.2
  SAY ~���, �������� 2000 �������. ��� ������� ������, ��� ����� ���� �����, � � ���� ��������� ���! ����� �������! ��� ������� �� ������ � �������! ����� ������ ��� �������� �������! �� ������� ��� �� ���. ���� ��� ���������. ��������� �� ���, � � ��� ��� ������� ������, ������� �������� ���� ������ ����! � ������� ��� ������, ����� ����� ������� ���!~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.3
  SAY ~������! ��� �������  �� ������� ��� ����! ��� �� �� ����� ��� �������, ��� ������-������� ������ ��������� �� �������! �������� ��� 4000 ������� � �������, ��� ������ ����� ��� �������� ������. ��� ���, ���� �� ��������!~
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.4 24.5
  SAY ~���, �������� 2000 �������. � ���� �������, ���� �� ����� ������������! ��, ��� ��������� ��������� ������ � ������ - ��������� ���� ����! ��������, ��� ���� ������� � ����� ������� �������� ���� �������, �� ��� ���� �� ������. � ��������, ����� ������������� ������ ������������ ��, ��� � ��� ��� ����, ����� ������� �������-����������� ����. �������� � ���� ����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.4
  SAY ~�������� ������� �� �������� ������� ��������. �� ����!~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("OleffQuest","GLOBAL",0)!Global("OleffQuest","GLOBAL",2)GlobalGT("GillesQuest","GLOBAL",1)~ THEN BEGIN 35 // from:
  SAY ~���, �� ��� ������ �����, ���� �����? ������ �� ��������, ��� ��� ������ ����� � ����� �������������?~
  IF ~  Global("GillesQuest","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("GillesQuest","GLOBAL",2)~ THEN GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~�� ����� ���� ������, �� ������������� ������ ������ � ����� ������� �� ���������. ������ ����.~
  IF ~~ THEN REPLY ~��� ���� ������ ������� ������ �� ����������?~ GOTO 38
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY ~� ����� ������, ���-�� ��� �������� ������ ����� ���� ������������� ������ ���������� ����. � ��, � ���� � ��� ���� ������! ������� �� ��������, ��� ����� ��� ������������ ���� � ������� ������� �� ��, ��� ��� ��� ���������? �� ���, ������? ��! �������� � ���� ����!~
  IF ~~ THEN REPLY ~��� ���� ������ ������� ������ �� ����������?~ GOTO 38
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY ~� ���� ���� ����� �� ����� ������. ����� ����, � ��� �� ��������� �� �����������. �� ����� �����, ��� ��. �� �������� ����, ��� ����.~
  IF ~~ THEN REPLY ~��� ����� ���� ���������� ��� � �� ������ ���������?~ GOTO 39
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~� ����������� ���-����� �� ����. ���� ���������� ���� � ������ �� ���. �������, ��� ����� ���������. ��� ��� ������ �� �����������. �����, �� ����. �� ����� �� ������������, ����� � ���������� ���, ����� ��������� �������.~
  IF ~~ THEN REPLY ~��� ������������! ����� ��� ���� ��������, ������ ��!~ GOTO 15
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",2)~ THEN BEGIN 35 // from:
  SAY ~���, �� ��� ������ �����, ���� �����? ������ �� ��������, ��� ��� ������ ����� � ����� �������������? ���-�� ��� �������� ������ ��� ��� ������������� ������ ��������� ����. � ��, � ���� � ��� ���� ������! ������� �� ��������, ��� ����� ������� ������� �� ��, ��� ��� ��� ���������? �� ���, ������? ��! �������� � ���� ����!~
  IF ~~ THEN REPLY ~��� ���� ������ ������� ������ �� ����������?~ GOTO 38
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END


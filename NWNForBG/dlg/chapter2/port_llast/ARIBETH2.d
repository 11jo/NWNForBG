// ����-����� ������� �������� ������  ������ �������� ��������, ������ � ����� � ���� ����� ���������, ��� �����, ����� �� ��������� �������.

BEGIN ~ARIBETH2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)
IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~������� ������ ��� �����, � ����-������, ���� ���. ���� ��� ����� � ������� ��������� ���� �������� �����, ������� ������������� ����, ��� ��������� ���������� � ����� �������. � �� ����, ��� ��� ��� ���������� � ������������� ����� ������. �� �, �������, ���������� ������ ���, ��� ����.~ [ARIBE292] ~������� ������ ��� �����, � ����-������. ���� ��� ����� � ������� ��������� ���� �������� �����, ������� ������������� ����, ��� ��������� ���������� � ����� �������. � �� ����, ��� ��� ��� ���������� � ������������� ����� ������. �� �, �������, ���������� ������ ���, ��� ����.~ [ARIBE292]
  IF ~~ THEN REPLY ~��� ������ �������� ���� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ ���� ������� ������ ������� ���� ���������.~ GOTO 2
  IF ~~ THEN REPLY ~� ���, �� �������, ��� ������� ������ ������?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, �������, ������, ��� ���� ������... � ������... ��� ���� ������� � �����-�� ����������� ������, ������� � ������� ��������� � ������ ������ ������. �� ��� ���� ����� �� ���� ������... � ������, ��� � ���� ��� ���������, ������ ������, ��� �� ������������ � ������������ ����������, ���� �� ����� � �����������.~ [ARIBE294]
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, ��� � ���� ��������... �� �����, <CHARNAME>, �� ��������� � ���������� ��� �������. ����������, ��������� ��� ���������, ��� �� ��� ���������.~ [ARIBE472]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~���� ����� ����������� ��� ����� ���� ���� �����, � ��������, ������ �� �����... � ���������� ��, ���� ��� �� ������� ������ ����� ��������. ����� ����, ������� ����� ����� ������, ������ �����, � ����-������, � �� ������� ���... � ���� ��������� ��� ���������� � ������ �������� �����, ������������ � �������� ������.~ [ARIBE296]
   IF ~~ THEN  DO ~SetGlobal("AribethTalk","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~����� ��������, ��� �� ����� ��������� ������ ���� ����� ������ ������. ���� ��� ���, �� ������ ����� ��, � ������, ��� �� ����. ���� ������ � ���� ����, <CHARNAME>, ����� ����������.~ [ARIBE298]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~�� ��������� �������. ������� �����?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ������� ���-������ ����������, ��� �� ����� ���������.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~�������. ����������� ���, ��� ������, <CHARNAME>.~ [ARIBE299]
  IF ~~ THEN REPLY ~��� �� � ����� ���� ����������� ������, ���� � ���� ������ ���������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� ����������� ������ ���� ���������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ������, ���� � ���-������ ��������?~ GOTO 13
  IF ~~ THEN REPLY ~������ �� ������ ������ �� ���� � ������������?~ GOTO 14
  IF ~~ THEN REPLY ~��� �� ������ ����� �� ���� ������?~ GOTO 15
  IF ~~ THEN REPLY ~� ���� ���� ������ �������.~ GOTO 16
  IF ~~ THEN REPLY ~��� ��� �������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.6
  SAY ~��� �� ������ ������?~ [ARIBE312]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~�� ��������� �������. ������� �����?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ������� ���-������ ����������, ��� �� ����� ���������.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~��� ������� �������. ��� ���� ������� �����?~ [ARIBE313]
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~�������� �� ������� ������.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~�������� �� ������ ��������.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~�������� �� ������ ����.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")
Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")
Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~�������� �� ������� ����� ������ �� �������.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("SolomL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~���� ������.~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1
  SAY ~����, ��� ����� �������� �������� � ������? �������� ����� ����� - ��������� ������. ���� � ��������� �������, ��� ���� ��� �� �������, �����. ���� ����������, ������� ���� ������� ������, ���������� ������, �� ��� ��� �� �����, ��� ��������� �����. ��� ������ ����� ��� �������, ����� �� ����� ������� �� ������ ����.~ [ARIBE314]
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 17.1
  SAY ~� �������, ����� �����������, ��� ����� ����� ��������� ������ ���������. � ������� � ���� �����������. ��������, ���� ����� �������� ��� �� ����������, ������� ��� �����. ���� ������� ��� ���-������ ��������?~ [ARIBE631]
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~�������� �� ������ ��������.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~�������� �� ������ ����.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~�������� �� ������� ����� ������ �� �������.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("SolomL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~���� ������.~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY ~����� ����� ������� ���� ���� ����� �� ������, ��? � ������� ��� ���, �� �������� �� �������� ������. ���� ������� ��� ���-������ ��������?~ [ARIBE633]
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~�������� �� ������� ������.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~�������� �� ������ ����.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~�������� �� ������� ����� ������ �� �������.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~���� ������.~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 6.3
  SAY ~��������� � �������, ���� ������� �������� ����������. ��� ������ ����... � ���� �������, �� ���. ���� ������� ��� ���-������ ��������?~ [ARIBE634]
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~�������� �� ������� ������.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~�������� �� ������ ��������.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~�������� �� ������� ����� ������ �� �������.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("SolomL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~���� ������.~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.4
  SAY ~����� ������ ������, ��� ��� �� ��������� ����� � ���� �����������, ���� �� �� ������� ����������� ���� �����. �������� ������. ���� �� ���� ���������� ����� ������������, ��� ���� ������� � ��� ����� ��������� � �������. ������, ��� �������, ��� ��� ����� ��������� � ��������. ��������, ��� ������� ���������� ��� ���� �������, ����� ������ ��� � �����������. ����� ����� ��� �����-������ ��������������.~ [ARIBE635]
  IF ~~ THEN REPLY ~������, � ����� �������.~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.6
  SAY ~���. ���� ������������. �������� ���������, ���� �������� ������� ����� � ���� ��������� �����. ���� ������� ��� ���-������ ��������?~ [ARIBE639] 
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~�������� �� ������� ������.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~�������� �� ������ ��������.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~�������� �� ������ ����.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~�������� �� ������� �������.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~�������� �� ������ �������.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("SolomL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("WardokL")~ THEN REPLY ~���� ������.~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.7
  SAY ~����, ����� ���������� ������� ���� ��� ���� ����! � �� ���� ��� ��� ������ ����. �������! ���� �� ���� ���������� ����� ������������, ��� ���� ������� � ��� ����� ��������� � �������. ������, ��� �������, ��� ��� ����� ��������� � ��������. ��������, ��� ������� ���������� ��� ���� �������, ����� ������ ��� � �����������. ����� ����� ������������� ���� ����������.~ [ARIBE640]
  IF ~~ THEN REPLY ~��� �������, � ����� �������.~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.5
  SAY ~��� ���������� ������������... ����� ��������� � �������. ������� ���������, <CHARNAME>. �� ������������ ������� ����� ������, � ���� ����� ����. �� ������ ����� ������ ���������� � ������, � ����� � � ���� ����� �������. ���������� � �������... �������, �� ���������, ��� ��� ��� ����� �������.~ [ARIBE636]
  IF ~~ THEN REPLY ~������, ��� ������� ������.~ GOTO 24
  IF ~~ THEN REPLY ~����� ����, ���-�� ��� �������? �� ������� �� ����?~ GOTO 25
  IF ~~ THEN REPLY ~��� � ������ � �����?~ GOTO 26
  IF ~~ THEN REPLY ~������, � ����� � ������.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY ~��� ��������. �� �� ����������� � �� ����� �������� ���������, � ������� �����������... � �����, � ���� ���� ��� ��������� ����������� � ������� ����� ��������� ������, ���� ������ �� ����� ��������� ���������. �� �� ����������� ������ ����� ������, ������? ������ �� �� ���� ������� �����, � ������ ���������� � ���, ��� �� �������, ��� ������ �������� �������.~ [ARIBE317]
  IF ~~ THEN REPLY ~����� ����, ���-�� ��� �������? �� ������� �� ����?~ GOTO 25
  IF ~~ THEN REPLY ~��� � ������ � �����?~ GOTO 26
  IF ~~ THEN REPLY ~������, � ����� � ������.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY ~� �����, � �, �������, ������������� � ��� � �������. ����� ������ ����, ����� ������ ��� ������� � �����. ��� �� ����, �� �... � ���� ������ �����.~ [ARIBE319]
  IF ~~ THEN REPLY ~������, ��� ������� ������.~ GOTO 24
  IF ~~ THEN REPLY ~��� � ������ � �����?~ GOTO 26
  IF ~~ THEN REPLY ~������, � ����� � ������.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY ~��� � ��� �������, ���������� � ������� ������. ���� ��� �������, �� ��������� �� ������, ��� ��� ���������� � �����, �� � ��� ������� � ���� �����.~ [ARIBE323]
  IF ~~ THEN REPLY ~������, ��� ������� ������.~ GOTO 24
  IF ~~ THEN REPLY ~����� ����, ���-�� ��� �������? �� ������� �� ����?~ GOTO 25
  IF ~~ THEN REPLY ~������, � ����� � ������.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~� �����, ����� ������� �� ����������� ������������ ����� ������, � ����� ���������� ������������ ���� �������� ��� ����� ���������� �� ��������� ������������. ������ ������, ��� ����������� ���� �� ����� �����������. ����� ���� ������, ��� ��� ���� ����� ������ �����, ����� ����� ��� ���-��, ���� �� ��������... � ������ ����� �������, ��� ��� �� ������� ���������� � ������� � ���� ����. ��� �����, �� ����� ������ ��� ���������, ����� ������ ���, <CHARNAME>. �� �������, ��� ���� ������ �������� �������������.~ [ARIBE300]
  IF ~~ THEN REPLY ~��� �� ����������� ������ ���� ���������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ������, ���� � ���-������ ��������?~ GOTO 13
  IF ~~ THEN REPLY ~������ �� ������ ������ �� ���� � ������������?~ GOTO 14
  IF ~~ THEN REPLY ~��� �� ������ ����� �� ���� ������?~ GOTO 15
  IF ~~ THEN REPLY ~� ���� ���� ������ �������.~ GOTO 16
  IF ~~ THEN REPLY ~��� ��� �������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY ~� ������ ���� ��������� ������ � ���, ��� ����� ���������� ��������. ������ �� �������� ����� ������ ������� � ����� ������... ��� ������ ������� � ��� ���, ��� � ������������ �������� ��������. � ��������� ��� ���������� � ������� � ��� ��������������. ������� �����-������ �������� � ������� ������� ��� � ������ �������� �����. ����� ����� ������ ������ ������� � ������, �� ������ �������� � ���. ���� ��� �������, �� ���������� ����-������ �� ��������� � �������, ��� ���, � ��� ��������� �� ����.~ [ARIBE303]
  IF ~~ THEN REPLY ~��� �� � ����� ���� ����������� ������, ���� � ���� ������ ���������?~ GOTO 11
  IF ~~ THEN REPLY ~��� ��� ������, ���� � ���-������ ��������?~ GOTO 13
  IF ~~ THEN REPLY ~������ �� ������ ������ �� ���� � ������������?~ GOTO 14
  IF ~~ THEN REPLY ~��� �� ������ ����� �� ���� ������?~ GOTO 15
  IF ~~ THEN REPLY ~� ���� ���� ������ �������.~ GOTO 16
  IF ~~ THEN REPLY ~��� ��� �������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY ~����� ����������, ����� ��� ������� ����������, �� ������ ���������� �������� ��� � ������. ����� �� ����� ������ ����� �� ���� �����, ���� ����� �����, ��� ������ ������.~ [ARIBE306]
  IF ~~ THEN REPLY ~��� �� � ����� ���� ����������� ������, ���� � ���� ������ ���������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� ����������� ������ ���� ���������?~ GOTO 12
  IF ~~ THEN REPLY ~������ �� ������ ������ �� ���� � ������������?~ GOTO 14
  IF ~~ THEN REPLY ~��� �� ������ ����� �� ���� ������?~ GOTO 15
  IF ~~ THEN REPLY ~� ���� ���� ������ �������.~ GOTO 16
  IF ~~ THEN REPLY ~��� ��� �������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.4
  SAY ~� ������ ������ ������������, <CHARNAME>. ������� ��, ���� ����� �������� ��������� ����������� � ������� ������ ������. ������ �� ���������, ��� �������� ���� ��������� ������������� ���-�� �� ��������� ������������... � ��� ������ ��, �������� ������ �����, ������ �������� �����������.~ [ARIBE307]
  IF ~~ THEN REPLY ~��� �� � ����� ���� ����������� ������, ���� � ���� ������ ���������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� ����������� ������ ���� ���������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ������, ���� � ���-������ ��������?~ GOTO 13
  IF ~~ THEN REPLY ~��� �� ������ ����� �� ���� ������?~ GOTO 15
  IF ~~ THEN REPLY ~� ���� ���� ������ �������.~ GOTO 16
  IF ~~ THEN REPLY ~��� ��� �������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.5
  SAY ~�� �������������� � ������������, ��� �� ��������, ��� ������, �� ��� ���� ����� ��� �������� ����� ����. ����� ������, ��� ���� ����� ��������� �� ��������� ������������, � ��� ��� ��� ������� ��� ���� �������� ����. ������, ������� ����� ����, ���������� ����� ����� �������... �� ��� ���������� ���������� ��������, ��� ��� �� �����, � ������ �� �����.~ [ARIBE309]
  IF ~~ THEN REPLY ~��� �� � ����� ���� ����������� ������, ���� � ���� ������ ���������?~ GOTO 11
  IF ~~ THEN REPLY ~��� �� ����������� ������ ���� ���������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ������, ���� � ���-������ ��������?~ GOTO 13
  IF ~~ THEN REPLY ~������ �� ������ ������ �� ���� � ������������?~ GOTO 14
  IF ~~ THEN REPLY ~� ���� ���� ������ �������.~ GOTO 16
  IF ~~ THEN REPLY ~��� ��� �������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~������ �� �����������, <CHARNAME>? ������� ����� ���-�� ��������� ���, ��?~ [ARIBE362]
  IF ~  Global("TalkDreams","GLOBAL",0)~ THEN REPLY ~���, �� �������.~ GOTO 27
  IF ~  Global("TalkDreams","GLOBAL",0)~ THEN REPLY ~(����) ������-��, ��.~ GOTO 27
  IF ~  GlobalGT("TalkDreams","GLOBAL",0)~ THEN REPLY ~(����) ���, �� �������.~ GOTO 27
  IF ~  GlobalGT("TalkDreams","GLOBAL",0)~ THEN REPLY ~������-��, ��.~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 7.1.2
  SAY ~�������. �����, ��� ��������� �� ��� ���� �� �����. �� ����� ��� �����������... ��������� ������ ���� -- ��� ��� �� ����� �����������. ����� ����������, ��� � ������������ �� ��� � ������ ���-�� ����� ��������. ��� ���������� �� ���� ��������� ���������, ������ � ����� � ���, � ����� �������� �� �� ��������� �������� ������� ������ ��������, ��� ��������� ��. ����� ����� ����, ��� ���������, ����� ���� ���� �... � �������, � �����, ��� ������ ������������� � ��������� ��������� ����, �� �� ��������, <CHARNAME>?~ [ARIBE362]
  IF ~~ THEN REPLY ~���, ��� ���������� �� �����������.~ GOTO 28
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~��� ��� ��������� ���������, ��� �� ���� ��� �����?~ GOTO 29
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� ��� ��������� ���������, ��� �� ���� ��� �����?~ GOTO 31
  IF ~~ THEN REPLY ~��������, �� ������� � ���. ������ ���������.~ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY ~�� �������-��, ���� ���-�� ��������! � ��� ����� ������ ������, ��� ��-�� ���� �������� ���� �� ����� ������������, �� �� ���������� ���������� �� ���, ��� � ��������. ��� ��� ���������... ��������� �� �������� �������. � ��� ���� ������� ����� ������ ������ ��� ������������, ��� ��� ���.~ [ARIBE366]
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~������, �� �� ����� �������.~ GOTO 29
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~������, �� �� ����� �������.~ GOTO 31
  IF ~~ THEN REPLY ~��������, �� ������� � ���. ������ ���������.~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY ~� �� ����? ���� ��� ��� - ����� � ���, ��� �? ��� ���... �������� � ������ ����, ��... ��� �������! ��� ��� ����, ��� �� � �����, � �� ����-������ ���.~ [ARIBE371]
  IF ~~ THEN REPLY ~������ �� ��� �� ���������� ��� �� ���� ����? �����, ������ �����.~ DO ~SetGlobal("DreamsOfAribeth","GLOBAL",1)
SetGlobal("AribethFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 32
  IF ~~ THEN REPLY ~� �� �� ������, ���, ��������, ��� ������� ����� ��������?~ DO ~SetGlobal("DreamsOfAribeth","GLOBAL",1)
SetGlobal("AribethFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 32
  IF ~~ THEN REPLY ~� ���� ���� ������ �������.~ GOTO 16
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY ~��� - ��� ������ ���, � ������� � ���, ��� ��� ������ ������� ������ ��� ����. � �� ���� ��������� ��... �������� � ����. ������� �������� � ���������� ������ �������, <CHARNAME>, � �� ���� �� ����� ������ ��������.~ [ARIBE369]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ������� ���-������ ����������, ��� �� ����� ���������.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1.2
  SAY ~(��������) ��������, �� � �����, <CHARNAME>. ����� ����, ����� �������, ���� ���� ������ �� ���� ���� �������� ���-������ ������.~ [ARIBE372]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~�... � ����� �� ���. ������ �����. � ������ ����, ������� ����� � ���������� ����. �� ��� ������� ���������� ����, � ������... ��������� ������, ��� ������� ���� ������ ��. �... � ����� � ���� ���������� � ����� ������. ��� ������. �� ������ �� ����, � ������� ������� ���, �� �� ������ �������� � �������. ������ ���������� ������. ��� �������� ����, � �... � ������ �� �����, ���� �� ����, � ��� ���� �����. � ���� �� ������, ������ ����� ��� ���������� �����������, �� ����� ���� �� ������.~ [ARIBE373]
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~� ����� � ������ ����������� ������... � ����, ��� ��� �� ������. �� �������������� � � ������� ������� �� ����... � � �������, ��� ��� ���... � ����� ��� ��� �������������� �� ��� ������. ���... ��� ��� ���, <CHARNAME>. ��������, �� �������, ������ � �� ���� ��������� ��. �... �����... ����� ����, ��� ��� ����� ��������.~ [ARIBE373]
  IF ~~ THEN REPLY ~��� ������ ����� ������. ���� �� ��� ���� ��������.~ GOTO 35
  IF ~~ THEN REPLY ~��� ������ � ������ ����� �� ��� �����, ������.~ GOTO 35
  IF ~~ THEN REPLY ~� �� ����, ��� �������.~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1.2.3
  SAY ~��� � �������, <CHARNAME>. ��� ���� ���� ��� ����� �������, ������? ��... � ����, ��� ���������� ���... ������ ��� ��� ����� �� ��� ��������� ����. � ������ �������� ���� ������� �����, ������� ���. ��... ��� ��������� ��� � ���, ��� � ����� ���������. �����-������ � �������� ��� ��� �������. ��, � �� ��� ���, ������� �������� � ����� ������. � ����� ������, � ��� ���� �� ���� ���-��, �� ��� �� ����� ������������������.~ [ARIBE386]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ������� ���-������ ����������, ��� �� ����� ���������.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY ~��� ���, � ����� � ���? ��������� ��������� ����� ��-�� ����, ��� ��� �������� �������� ������ ������, ��� ����� ������� ��� ������, � ���� ��� ������� ����������� �������, � ������� ����� ����������, ������� ���� ����������? � ������ ���� ������, ��� ��� �� ������� ��������� � ����. ������� �������� � ������ �������, � �� ���� ������ �� ����� ��������.~ [ARIBE389]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY ~� ��� ��������, ��? � �� �������, ��� ������ �������� ��� �������? ��� �� �������� ����������, � � �� ���� �������� ���, <CHARNAME>.~ [ARIBE392]
  IF ~~ THEN REPLY ~���, � ���� ���������.~ GOTO 36
  IF ~~ THEN REPLY ~�����, ����� ����, � ������ ���.~ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 8.1
  SAY ~��� ������. �� ������ �� ��������� �����, ���� ������� ��� ���������� � ������ ���������. �, � ����� ������, �� ����. � ���� ��� ������?~ [ARIBE392]
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 8.2
  SAY ~��������, ��� ����� ����� �����. ��� ��� � ���� ��� ��� �������?~ [ARIBE431]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~�� ��������� �������. ������� �����?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY ~��� ����� ���� � ������� �����, � ����� ��������� � �������� ���, � ������� � � ����������� ���� �� �����, ��� ����� ���-�� �������, ��� ������ �������� ���������, ����� ��� ��� ����. ������� ���� ��������� �� ����� ������ ������ ����� �� ��. ��� ����� �������, �� � ������. ����� ��� � ������� ������ � ���, ����� ���-�� ��������� �����. � ������� �� ����� ������ � ����� � ����� � ����������� ������� ���� �����, ������� ���������� ��� �� ����.~ [ARIBE394]
  IF ~~ THEN REPLY ~��� ������ �� ��� �� ������.~ GOTO 39
  IF ~~ THEN REPLY ~� ��� �� �� ����� ��������� ����� �����?~ GOTO 40
  IF ~~ THEN REPLY ~�� ���, ��� ��� ������...~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~��, �������, � ����� ���� ������ ������. ����� � ����� ��������� ��������� ����, � ������� ����� ������... �� �� ����� ����� �����.~ [ARIBE397]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY ~��� ���� ��������. ����� ����� ��������� �������� ����. ������ ������, � ���� ����� �� �����, ��� �� �����, �� ������� � ���������.~ [ARIBE428]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY ~�����, <CHARNAME>. � ��� ������ ������ ���� �������. ������������ ������� ��� ��� ����-���� ��������.~ [ARIBE429]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY ~� ����� ���� ���� ����� � ����������� ����� ����� �� ������ ����. � ��� ����������� ����� ������ ������� ����, ��� ��� ���������� ������ ��������� ������� � ��������. ���� ���� ������������ � ������������ ����� ����, � � ������ � ����� � �������, ����� �������, ��� �� ��� ������������ �������. � ������, ��� ����� � ���. �� ��� ������� � �������, ���� � ��������, ��� � ���� ��� ������ ����. � ��, �������, ������ �� ���������� ������... �� ������� ��������� �� ���� � ��� ������ ������ �� �����.~ [ARIBE398]
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY ~����� � ������ �� �����. �������� � � ��������� ��������� ��������� ����� ������ �����������. ������ ������� ���, ��� � ���� �� ����� ������.~ [ARIBE401]
  IF ~~ THEN REPLY ~� ��� ��� �������, ������� ���� ���?~ GOTO 44
  IF ~~ THEN REPLY ~�������, ������� ���� ���... ��� ��� ���?~ GOTO 45
  IF ~~ THEN REPLY ~�� �����, ��� ������� �������.~ GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY ~� ����� ������, ��� ��� ��� ����� ����, ��� ��� ���, ������� ��������������. ����, ��������, ��� ������������. ��� �� �� �� ���, ������ ��������� �� ������, ��� �� ������ ����... � � ���� ������ ��� �� ������. ���, ����� ����, ���������� ����� �������, ��� � ������� �� ������ ��� �����. � ������� ������ ������� ����� ����� �� �������� �� ��� �� ��� � �������, ��� ��� ����� �� ����� � ���� �������� ��������������. ������� � ��������� ���, ��������� ��������� � ���� �������� �����. ��� ����� ������� ����, � ������� ��� ��� ����� ����� �� ����. �� ������ ���, ��� ���� ����� ���-�� � ������ �����, � � ����� ������ � �������� ����, �������� � ����������� � ����� ������� ����. ��� ������ �� ������������.~ [ARIBE402]
  IF ~~ THEN REPLY ~��� ��������� �����?~ GOTO 47
  IF ~~ THEN REPLY ~� ����� �� ����� ������, ��� ������?~ GOTO 48
  IF ~~ THEN REPLY ~��� �� �������, ��� ��� ��� ������� ��� ������� ���?~ GOTO 49
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY ~� ����� ������ � ��� ���. ���������� ������ ������������� ����. ����, ��������, � ���� ������� ��� ������������. ��� �� �� �� ���, ������ ��������� �� ������, ��� �� ������ ����... � � ���� ������ ��� �� ������. ���, ����� ����, ���������� ����� �������, ��� � ������� �� ������ ��� �����. � ������� ������ ������� ����� ����� �� �������� �� ��� �� ��� � �������, ��� ��� ����� �� ����� � ���� �������� ��������������. ������� � ��������� ���, ��������� ��������� � ���� �������� �����. ��� ����� ������� ����, � ������� ��� ��� ����� ����� �� ����. �� ������ ���, ��� ���� ����� ���-�� � ������ �����, � � ����� ������ � �������� ����, �������� � ����������� � ����� ������� ����. ��� ������ �� ������������.~ [ARIBE402]
  IF ~~ THEN REPLY ~��� ��������� �����?~ GOTO 47
  IF ~~ THEN REPLY ~� ����� �� ����� ������, ��� ������?~ GOTO 48
  IF ~~ THEN REPLY ~��� �� �������, ��� ��� ��� ������� ��� ������� ���?~ GOTO 49
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY ~(��������) �� ���� ������� ���� ���������� �� ����, <CHARNAME>. ������, ����� � ���������?~ [ARIBE426]
  IF ~~ THEN REPLY ~���, � ������ �������.~ ~���, � ������ ��������.~ GOTO 50
  IF ~~ THEN REPLY ~��, ��������, � �������� ��� �����.~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 46.1
  SAY ~����� ������. ������, ��������, � ������ �� � �������������� ����������. ��������� ��� ��������� � �������� � ��������, ������� ���� ����. � ����� ������, ��� ��� ��� ����� ����, ��� ��� ���, ������� ��������������. ����, ��������, ��� ������������. ��� �� �� �� ���, ������ ��������� �� ������, ��� �� ������ ����... � � ���� ������ ��� �� ������. ���, ����� ����, ���������� ����� �������, ��� � ������� �� ������ ��� �����. � ������� ������ ������� ����� ����� �� �������� �� ��� �� ��� � �������, ��� ��� ����� �� ����� � ���� �������� ��������������. ������� � ��������� ���, ��������� ��������� � ���� �������� �����. ��� ����� ������� ����, � ������� ��� ��� ����� ����� �� ����. �� ������ ���, ��� ���� ����� ���-�� � ������ �����, � � ����� ������ � �������� ����, �������� � ����������� � ����� ������� ����. ��� ������ �� ������������.~ [ARIBE427]
  IF ~~ THEN REPLY ~��� ��������� �����?~ GOTO 47
  IF ~~ THEN REPLY ~� ����� �� ����� ������, ��� ������?~ GOTO 48
  IF ~~ THEN REPLY ~��� �� �������, ��� ��� ��� ������� ��� ������� ���?~ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 46.2
  SAY ~��������, ��� ����� ����� �����. ��� ��� � ���� ��� ��� �������?~ [ARIBE431]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~�� ��������� �������. ������� �����?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY ~����� ���� ������� ����, � �� �������� � ������ �� � ��� ������ ����������� ������������ �����. � ������ �������� �������������� � ����� ��������� ����, � ������� ������ �����. ��� ����������� ���� ��������� ��� ������ ��������� � �����, � �����, �����, � ��������� �������� ����������, �������, � ������, ��� �... �����... �����, �������, ��� �������� ����...~ [ARIBE407]
  IF ~~ THEN REPLY ~��������, � ���� � � ������ �� ���� �������� ���.~ GOTO 52
  IF ~~ THEN REPLY ~�� �� �� �� ������ ����� �������, ������?~ GOTO 53
  IF ~~ THEN REPLY ~�������-�� ��� ������� �����������. ������� ��������� � ���-������ ������.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 47.1
  SAY ~���, �... ������� ���, <CHARNAME>. ������� ���, ��� ��������� ��� �������. ��� ����� ������ � ����. � �� ������ �������� ���... ������. ������ ��� �����, ��� ������ ����� ���������� ����� � ��� ������� �������. � �������, ��� �� ��������� �� ��� �� ���������� �� �� �����.~ [ARIBE409] ~���, �... ������� ���, <CHARNAME>. ������� ���, ��� ��������� ��� �������. ��� ����� ������ � ����. � �� ������ �������� ���... ��������. ������ ��� �����, ��� ������ ����� ��������� ������� � ��� ������� �������. � �������, ��� �� ��������� �� ��� �� ���������� �� �� �����.~ [ARIBE409]
  IF ~~ THEN REPLY ~��.~ DO ~SetGlobal("AribethFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 55
  IF ~~ THEN REPLY ~��� �� ����� ��� ���� ����.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 56
  IF ~  Gender(Player1,MALE)~ THEN REPLY ~�� ��... �����������, ����! ��� ������, ��� �� ����� ������ � �������?~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY ~� ����, ���� ���. � ������ ������� �������� � ���������� ������ �������.~ [ARIBE412]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY ~�... �������. ��� �, ��� ����� �������, ������ ��� ��� �� ����� �������� ����� ���������� �����. ������� �������� � ���������� ������ �������.~ [ARIBE413]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 52.3
  SAY ~...� ������, ��� �� ��� �������, ���. � �� ��� ������� � ���, ��� ������� �. ������� �������� � ���������� ������ �������.~ [ARIBE415]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.2
  SAY ~���, �� �����. ����� � ��� �� ����������� � ��������. ����� ���� ������� ����, � �� �������� � ������ �� � ��� ������ ����������� ������������ �����. � ������ �������� �������������� � ����� ��������� ����, � ������� ������ �����. ��� ����������� ���� ��������� ��� ������ ��������� � �����, � �����, �����, � ��������� �������� ����������, �������, � ������, ��� �... �����... �����, �������, ��� �������� ����...~ [ARIBE423]
  IF ~~ THEN REPLY ~��������, � ���� � � ������ �� ���� �������� ���.~ GOTO 52
  IF ~~ THEN REPLY ~�� �� �� �� ������ ����� �������, ������?~ GOTO 53
  IF ~~ THEN REPLY ~�������-�� ��� ������� �����������. ������� ��������� � ���-������ ������.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 49 // from: 44.3
  SAY ~� �� ����. ������� � ���� �� ����������� ���. � ������ �� ���� ���� � �� ������ ���������� ����� �� �����. ����� ���� ������� ����, � �� �������� � ������ �� � ��� ������ ����������� ������������ �����. � ������ �������� �������������� � ����� ��������� ����, � ������� ������ �����. ��� ����������� ���� ��������� ��� ������ ��������� � �����, � �����, �����, � ��������� �������� ����������, �������, � ������, ��� �... �����... �����, �������, ��� �������� ����...~ [ARIBE424]
  IF ~~ THEN REPLY ~��������, � ���� � � ������ �� ���� �������� ���.~ GOTO 52
  IF ~~ THEN REPLY ~�� �� �� �� ������ ����� �������, ������?~ GOTO 53
  IF ~~ THEN REPLY ~�������-�� ��� ������� �����������. ������� ��������� � ���-������ ������.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 53 // from: 47.2
  SAY ~���. ���... � �� ���� ������ �������. ������� ���, ��� ��������� ��� �������. ��� ����� ������ � ����. � �� ������ �������� ���... ������. ������ ��� �����, ��� ������ ����� ���������� ����� � ��� ������� �������. � �������, ��� �� ��������� �� ��� �� ���������� �� �� �����.~ [ARIBE409] ~���. ���... � �� ���� ������ �������. ������� ���, ��� ��������� ��� �������. ��� ����� ������ � ����. � �� ������ �������� ���... ��������. ������ ��� �����, ��� ������ ����� ��������� ������� � ��� ������� �������. � �������, ��� �� ��������� �� ��� �� ���������� �� �� �����.~ [ARIBE409]
  IF ~~ THEN REPLY ~��.~ DO ~SetGlobal("AribethFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 55
  IF ~~ THEN REPLY ~��� �� ����� ��� ���� ����.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 56
  IF ~  Gender(Player1,MALE)~ THEN REPLY ~�� ��... �����������, ����! ��� ������, ��� �� ����� ������ � �������?~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 57
END

IF ~~ THEN BEGIN 54 // from: 47.3
  SAY ~������� ��������� � ���-������ ������.~ [ARIBE422]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~������, � �����.~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.5
  SAY ~��, � �������. � ��� ������ � ������ ����� � ���, ��� ������� ���� ��� ������... � ��� � ������ �� ������ �������, ����� ������������� ���... � ��� ������ �� ��� �����! ������ ��� ���� ����� �������� �������� �������������� � ���������� ������ �����, � �������� ��� � �. � ��� �� ������� �� ���? �� ��� ���������. ��������� ����� ������ �� ������� ������ �����, ��������� ����� ����� ��-�� ������������ ������ ������. ������� ���, ������ � �� ������ ���������, <CHARNAME>!~ [ARIBE432]
  IF ~~ THEN REPLY ~�� ������ ������ ������� � ������ ����� �����!~ GOTO 58
  IF ~~ THEN REPLY ~��������, ��� �� ������� ��� ������� ���������.~ GOTO 59
  IF ~~ THEN REPLY ~��������, �� �����. � ��� ���� ������� ��� �����������.~ GOTO 60
  IF ~~ THEN REPLY ~��� �� ��������, ����� �� ��� ��������.~ GOTO 61
END

IF ~~ THEN BEGIN 58 // from: 9.1
  SAY ~�� ������� �� ���� ������! ��� �� ������ �������� ��� ����, � �� ������ ������ ��� �����! �� ������ ��� ������� ���������� � ������� ������ ������ �����!~ [ARIBE434]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 9.2
  SAY ~��. ������ ���� ����������� ����� �����. ������,  ���������� ������! ���� �� �� ��� ����� ����������, ����� ���������, �� ������� �� �� ����� �� ����, ��� ���������!~ [ARIBE458]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 60 // from: 9.3
  SAY ~��. � ������ ��������� �� ���, ��� �������� ������ �������. � �� ������� � ���� ������ ���������, �� ��, ��� �� ��� ������� ��������� � ���������� �������!~ [ARIBE460]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 9.4
  SAY ~� ������ ��� � �� ������ ��� ��������? ���� �� ������ ������ ���������� � ��� ����� ����������, ����� ���������, ��������, �� �� �� ��� ��� ��� ���!~ [ARIBE461]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.1
  SAY ~� ��� ������ ������� ���� �������. ������� ����, ���, ������� ��������������, �� ������ ������ ���������� �����! � ���, � ���� ���������? � ���� ������� ���� ����� ��� ���������, � ���� ������� �� ��, ��� ������� ����� ��������� ���������������� ���, ��� �� ����? ��� ������� � ���� ����?~ [ARIBE436]
  IF ~~ THEN REPLY ~�� �������� ���, ������ �������� ����.~ GOTO 63
  IF ~~ THEN REPLY ~�� �������� ���! ����������, ��� �� ������ �� ���!~ GOTO 64
  IF ~~ THEN REPLY ~�������-��, ��� �������, �� ��������!~ GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY ~�... � �� ����, <CHARNAME>. ��� ������ ���� ����, �� �������� ���� �� ���� ����. � ���� �����, �����. ����� ����� ���� �������� ��������������, � ����� ������� �� ��� � ����?~ [ARIBE438]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 64 // from: 62.2
  SAY ~� ��� ������ �� ����, <CHARNAME>? ��� ������ ���� ���� � �������� ���� �� ���� ����, �� ������ ���� �������� �������� ��������������... ������ ����� ������� �� ��� � ����. � ���� �����, ������!~ [ARIBE456]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 62.3
  SAY ~� ���� �� ���� ����������... ������ ����� � ����� �������. ��� �������� ���� �� ���� ����, ������ ���� �������� ��������������... ������ ��� ����, ����� ������� �� ��� � ����. � ���� �����, �����!~ [ARIBE456]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 63.1.64.1.65.1
  SAY ~���, ��� � ����, ��� ��, ���... � ������ �� ������. � ������ �� �������������. � �������� ���� ��������� ��-�� ���� ��������... �� ��� � ��������, ��� ������ �����������. ����� �� ���� ����, �� �... � �����, ��� ����� ��� �� ��������� ��������������. ��� ������� �� ���� ��������������, ������ �����... � ��� ���� �� �� �����. ����� ���� ��� ���... ���. ��� ��� �� ������������, � ���������� ��� ���� � ������ �����, <CHARNAME>. � ����� �������� ������, ��� ����� �������...~ [ARIBE439]
  IF ~~ THEN REPLY ~��� ����� ��� ����?~ GOTO 67
  IF ~~ THEN REPLY ~��� �����. ��������, ��� ������� ��������� � �����������.~ GOTO 68
  IF ~~ THEN REPLY ~� �����, �� ������������� ������� � ���!~ GOTO 69
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY ~��. � ����, ��� � ���� �� ������ ������� �������, ����� � �����. � ����� ����, � ����� ������ ������ ����� � ����� ����� �� ������. ��� ����� ��� ����������.~ [ARIBE442]
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY ~���. ���, ��� ���� �� �����. � ��� ������ �������� ��� ��������� ���� ������... � � ����� �� ����.~ [ARIBE452]
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 66.3
  SAY ~����� � ���. � ���� ��������� ������ ���� ����, ������� ���� �����������.~ [ARIBE452]
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 67.1.68.1.69.1
  SAY ~�������� ���, <CHARNAME>... ��������, ��� ��� ������ ����, ��� �� ������� ���� ����� � ��������� �� �� ����!~ [ARIBE443]
  IF ~~ THEN REPLY ~� ������.~ GOTO 71
  IF ~~ THEN REPLY ~� �� ���� ����� �������, ������.~ GOTO 72
  IF ~~ THEN REPLY ~� �� �����, ��� ��� ��� �������.~ GOTO 72
  IF ~~ THEN REPLY ~�� ����� � ���!~ GOTO 73
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY ~������� ���, ���� ���. ���... ��� ���, ��� � ���� ���������, ����� ���������� ��� ���. � ������ ���-�� �������, � ��, ��� �� ��������� ��� ������, ����� ������� ����.~ [ARIBE444]
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 70.2
  SAY ~�������. � �� ���� ��������� ������ �������, ��� ����� �� ���������� ��� ���. ��������... ��������, �� �����. ��������, ��� ������ ����� ���������, � ����� ��� ������ ����.~ [ARIBE451]
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 70.3
  SAY ~� � ������� ��� ������. � ����, ����� �� � ����� ������, ����� ��� � ������... �����, ����� ���. ����� �������� ����, <CHARNAME>, � ������������� � ������ �������. �� �� ����� ������ ��������� ��� �������.~ [ARIBE454]
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 71.1.72.1
  SAY ~�� ���� ��� ������� ������, <CHARNAME>. ���... �������� ���. ��� ������, ������� ������������ ����� ����. � ����, ����� �� ����� ���. ����� ��� ����� �������� ����� ������. ��������, ����... �� ���� ���-������ ��������... ��� ����� ���������� ��� ��� ���...~ [ARIBE445] ~�� ���� ��� ������� ��������, <CHARNAME>. ���... �������� ���. ��� ������, ������� ������������ ����� ����. � ����, ����� �� ����� ���. ����� ��� ����� �������� ����� ������. ��������, ����... �� ���� ���-������ ��������... ��� ����� ���������� ��� ��� ���...~ [ARIBE445]
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 75
  IF ~~ THEN REPLY ~����� ������, � ������ ���.~ GOTO 76
  IF ~~ THEN REPLY ~���, � �� ����.~ GOTO 77
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY ~� ������ �� ���� � ����, ���� ���. ���... ������ ��������� � ������� ���������� ���� �������� ���. ����������... �������� ������.~ [ARIBE447] ~� ������ �� ���� � ����. ���... ������ ��������� � ������� ���������� ���� �������� ���. ����������... �������� ������.~ [ARIBE447]
  IF ~~ THEN REPLY ~����� ������, � ������ ���.~ GOTO 76
  IF ~~ THEN REPLY ~���, � �� ����.~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 74.2
  SAY ~��� ������ ����. �� ������� ��� �����, ���� ������ ������ ���. ������� ��������� �����. �����, <CHARNAME>... ������� ������ ����� ������ � ������������� �� ���. � ���� ������� ����� ��� �����.~ [ARIBE448]
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",4)GiveItemCreate("ArRing",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 74.3
  SAY ~����� ��������� ���, ���� ���� ������ ��� ��� ������ �� ������. ���� � ���-���� �������, ��� ��� �� ���. ������� ��������� �����. �����, <CHARNAME>... ������� ������ ����� ������ � ������������� �� ���. � ���� ������� ����� ��� �����.~ [ARIBE450]
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",4)GiveItemCreate("ArRing",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY ~�������� ����� ����������, ���� ��������� ��������� � ����� �������, � �������. �� ������ ����� ������ ���������� � ������, � ����� � � ���� �����. ����� ��������� ������ ������ ��� � ����. � ����� �� ��� ���������� � ���� � ������, ����� ������� ������, ���� �����������.~ [ARIBE462]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from: 4.7
  SAY ~ �������� �� ���, ����� �� ����� ���������� ������� �������, <CHARNAME>... �� � ��� ��� ������ ����� ���������� ������. � ���� ���������� ������ �������� ������� �������, � ������� ������� �����, � ����������� ������� �� ����, ��� ��������� ��� ���������. ����������, �� ��� ��������� ����� ����� ��������� � ����� ������... �� ��� ���-�� ����� � ���������, ��� ��� ������ ���� �����, ��� �� ���������� ��, ���� ������ ���������.~ [ARIBE464]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from: 4.8
  SAY ~ � ��������� ��� ���������� � ������� ������ � ������, �� ��� ������������� ���� ������ � ������� �����.~ [ARIBE467]
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)
Global("Evidence","GLOBAL",0)
Global("AribethFriend","GLOBAL",66)
IsGabber(Player1)~ THEN BEGIN 80 // from:
  SAY ~�������� ����������, ����� �� ��������� ������� ����� ������, <CHARNAME>. ������ ������� �� ����, ��� ��� ��������� �������� �������. �� ������ ���-�� ����� �� ���� ������?~ [ARIBE474]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~�� ��������� �������. ������� �����?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ������� ���-������ ����������, ��� �� ����� ���������.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)
GlobalGT("Evidence","GLOBAL",0)
GlobalGT("AribethFriend","GLOBAL",1)
!Global("AribethFriend","GLOBAL",66)
!Global("AribethFriend","GLOBAL",4)
!Global("RelmarJournal","GLOBAL",1)
!Global("WardokLetter","GLOBAL",1)
IsGabber(Player1)~ THEN BEGIN 81 // from:
  SAY ~� ���� ������, ��� �� ���� � ���������, ���� ���. ���� ����� �������, ��� ������ � ����� ������, � � ����� ����������, ������ ��� �� ����������� ���� ������� ���������. �� ������ ���-�� ����� �� ���� ������?~ [ARIBE475]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~�� ��������� �������. ������� �����?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ������� ���-������ ����������, ��� �� ����� ���������.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)
Global("AribethFriend","GLOBAL",4)
Global("RelmarJournal","GLOBAL",1)
Global("WardokLetter","GLOBAL",1)
!Global("AribethFriend","GLOBAL",66)
IsGabber(Player1)~ THEN BEGIN 82 // from:
  SAY ~� ���� ����� ������ ���, <CHARNAME>. ������ ���, ����� ��� �������, ��� �� �������� �� ���� ����� ������� ������ ����, �� ��������� ���� ���, ��� ����� � ����� �������� ������������ �� ����� �����������. �� ������ ���-�� ����� �� ���� ������?~ [ARIBE476]
  IF ~~ THEN REPLY ~� ���� ���� ��������� �������� �� ���� �������.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~��� ������� ������ ���-����� ���������� � �����.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~�� ��������� �������. ������� �����?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ������� ���-������ ����������, ��� �� ����� ���������.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~�� ����������. ���-�� ���������?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~�� ������ ���� ��� �����-������ �����?~ GOTO 79
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 83 // from:
  SAY ~��������, � �� � ���� ���� ��������� ���� ������������. ����� �� ��� �������� <CHARNAME>,  � ���� ������������� ������ � ���. ~
  IF ~~ THEN EXIT
END

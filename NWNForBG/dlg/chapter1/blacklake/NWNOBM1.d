// ����������  ��� ������������  ���� ������� �������� ���, ��� ����� ��������� �� �����������, ���� ������ ���-�� ��� ����������. �� ���� ������ � �������� ������ ������������ � �� � ���� �����.  HasItem("Misc07",Myself)   Gold(268)

BEGIN ~NWNOBM1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),11,CHR)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~������ �� �����, � ���� ����? ��� � ��� ��� �� ����? ���� ���������, ��� ����������!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~���� � ������. � ���, ���� ����!~ GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~���� � ������. � ���, ���� ����!~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��. ��, �� ��������� �� ��� �� ������. �� ����� ���� �������� ����, ����� ��������� ��� �����������, ��� � ���. ����� ��� �� ��� �����, <SIRMAAM>?~
  IF ~~ THEN REPLY ~� �������� ����. �����, �� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������ ���-������ ���������� � ���, ��� ���������� � ������ ������� �����?~ GOTO 7
  IF ~~ THEN REPLY ~����� ��� �������� � ��� ������?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~� ������� ������ ��� ������ ������������. ������ ������ ���� ������ �� ��� ������� � ����������� �����.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������, �� ��������� ��������. � ��� �� �����, ��� ���, ������ �����, �� ���������� ����� ��������� �, ����� ����, �������� � ����� ����.~
  IF ~~ THEN REPLY ~� �������� ����. �����, �� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������ ���-������ ���������� � ���, ��� ���������� � ������ ������� �����?~ GOTO 7
  IF ~~ THEN REPLY ~����� ��� �������� � ��� ������?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~� ������� ������ ��� ������ ������������. ������ ������ ���� ������ �� ��� ������� � ����������� �����.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��� ��� �����? ��� ���� ����������� ����� �� ����� ����? ��������� ��� ���������� ������� ������ �������: ���� �� ������ ���� ��������, �� ���-�� ��� ����� ������� ��� �� ���!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 2
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��, ������, �������� � �������. ���, �������� ���� ������?~
  IF ~~ THEN REPLY ~� ������ ���! ������� ���� ������ ��� ����!~ GOTO 11
  IF ~~ THEN REPLY ~� ������ ���! ������� ���� ������ ��� ����!~ GOTO 34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 2
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~��, �������� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~���� ������ ������������ ��, ��� �������� � ����, �� ����������� ���������� ����. �� ����, ����� �� � ������ ���.~
  IF ~~ THEN REPLY ~�� ������ � �����-������ �������� ��������� � ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~�� ������� �����-������ ����� � ����?~ GOTO 13
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~�����, ��� � ���� ����� ����, ��� �� ������� "����������".~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 26
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 27
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY ~���� �� � ����� ��� ������, ��� ����� ��� �� ��������, ��� ����� �� ����� ����.~
  IF ~~ THEN REPLY ~��� ��� ��������� �������?~ GOTO 18
  IF ~~ THEN REPLY ~��� ��������� ����?~ GOTO 19
  IF ~~ THEN REPLY ~���� ��� ���������� �����, ��� ����� ������ ����������?~ GOTO 20
  IF ~~ THEN REPLY ~������-��, ��� �������� �� �������� ��� ��� ��� � ���.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY ~��� �� ��������? ����������� ������� (����������) � ����������� �����? ����������������, ��� ����� ���� ����� �����������, ��� �... � ���� ����?~
  IF ~~ THEN REPLY ~����������������? ��. ���� �� �� "�����������", �� ������ �������. ����� ����, ���� ������!~ GOTO 22
  IF ~~ THEN REPLY ~� ����� ������, � ����� ������� � ������ ��������.~ GOTO 14
  IF ~~ THEN REPLY ~� ��� �����. ������ �� ������������.~ GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY ~��, �������� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY ~��� ����. ������, ��������� ���� ��������� ������ � ����������. � ���� ��� �������, ����� ����������� ���� ������. ��������� � �������! � �� �������������! ��������! ������!~
  IF ~~ THEN DO ~GivePartyGold(268)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~������� ��, ���. � ���������� �� ����� ��������� ������ ������. ����� ���� ���� �������, �� ���� �� ��� ���� �����-�� ��������, ������� ����� ������� ��������.~
  IF ~~ THEN REPLY ~��������, ��� �����-������ �������� ����� ������� � ��������?~ GOTO 24
  IF ~~ THEN REPLY ~���, ������ ��������� � �������� ���?~ GOTO 25
  IF ~~ THEN REPLY ~�� ������� �����-������ ����� � ����?~ GOTO 13
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~� �� ������� �������� �� ������ �������� ������ �������, � ������ ���, ��� ����������� ���������� �� �������������� ������. ����� �� ���� ��� ������.~
  IF ~~ THEN REPLY ~�� ������ � �����-������ �������� ��������� � ���� ������?~ GOTO 12
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 6.3
  SAY ~������... �� ������� ���������. ���� ��, ��� �� ��� ��������...~
  IF ~~ THEN REPLY ~� �������� ����. �����, �� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������ ���-������ ���������� � ���, ��� ���������� � ������ ������� �����?~ GOTO 7
  IF ~~ THEN REPLY ~����� ��� �������� � ��� ������?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~� ������� ������ �� ����������� ������� �� ������.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY ~������. ��, ���� �����-�� ���� � ������ ����������, �� ������ ���, ������, �����������. �����, ��� ��� �����-�� �������.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 27
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY ~���, ������ �� �������� � ������. �� ������� ����, ������ ������� � �������� ������ �� ����� ���� � ������.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 26
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 7.3
  SAY ~� �� ����. ��� �������, ����� �����? �������, � ��� ������ ����������� ���������. �� ������ ����� ���-�� ���?~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 26
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 27
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY ~�����, ��� ����� ����� � "����� �����". ��� ������ �������. ������ � ������ �� ���� ��� �������. � �� ����� ����� �����. ��� � ������ ������.~
  IF ~~ THEN REPLY ~��� ��������� ����?~ GOTO 19
  IF ~~ THEN REPLY ~���� ��� ���������� �����, ��� ����� ������ ����������?~ GOTO 20
  IF ~~ THEN REPLY ~������-��, ��� �������� �� �������� ��� ��� ��� � ���.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 8.2
  SAY ~� ��� ��� ����� ���������. ��, ���� ����� � ����� �����, ������ ����� � ������ ������. ���-������ ���?~
  IF ~~ THEN REPLY ~��� ��� ��������� �������?~ GOTO 18
  IF ~~ THEN REPLY ~���� ��� ���������� �����, ��� ����� ������ ����������?~ GOTO 20
  IF ~~ THEN REPLY ~������-��, ��� �������� �� �������� ��� ��� ��� � ���.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 8.3
  SAY ~�����, ��� ������� ������� � ����� �����, �� ��� �� ���������� ������ ���. ��� � ������ ������.~
  IF ~~ THEN REPLY ~��� ��� ��������� �������?~ GOTO 18
  IF ~~ THEN REPLY ~��� ��������� ����?~ GOTO 19
  IF ~~ THEN REPLY ~������-��, ��� �������� �� �������� ��� ��� ��� � ���.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 1.5
  SAY ~� �� ������! � ���� ��� ������� ��������� ������, � ������ � ���� ������ ���! � ������ ������ ��������� ���� ������� � ����������!~
  IF ~~ THEN REPLY ~� �������� ����. �����, �� �������� ���?~ GOTO 6
  IF ~~ THEN REPLY ~�� ������ ���-������ ���������� � ���, ��� ���������� � ������ ������� �����?~ GOTO 7
  IF ~~ THEN REPLY ~����� ��� �������� � ��� ������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY ~� �������. ������ ���� ��������� ������ � ����������. ���! ����������! ������!~
  IF ~~ THEN DO ~GivePartyGold(268)SetGlobal("Robbed","LOCALS",1)IncrementGlobal("EvilNW1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.3
  SAY ~����� �����. ��� �� �� ��� �� ��������, � ������� �� ������ ������ ��� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY ~���, �� �����. �������� - ���� ���������� "������ �������". ���� ��� ����� ������ �����, ���������� ����� � ���. ���� �� ��� ��� �� ����, �� ������, ��� ������� � ������-��������� ����� ������.~
  IF ~~ THEN REPLY ~���, ������ ��������� � �������� ���?~ GOTO 25
  IF ~~ THEN REPLY ~�� ������� �����-������ ����� � ����?~ GOTO 13
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY ~������� �� ����, ��� �� �����, � ��� �������� "��������". ���� ������, �������������  � �������, �� �� ������-�������.~
  IF ~~ THEN REPLY ~��������, ��� �����-������ �������� ����� ������� � ��������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ������� �����-������ ����� � ����?~ GOTO 13
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 26 // from: 7.2
  SAY ~���� �������� �������� ��������, �� � �� ���� �������� �� ����.~
  IF ~~ THEN REPLY ~���� ������� ���, �� ����� �������� �����.~ GOTO 28
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�� ����� �� ������ ����������, ���������?~ GOTO 29
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~�� ����� �� ������ ����������, ���������?~ GOTO 30
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 27
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 27 // from: 7.4
  SAY ~��, ��� ������� ������� ���� �����, ������� ���������� �� �������. ��� �� ���-��������� �������, ������������� ����� ��������� ������ ���������. � �� ������� �������� �� ����� ����������� �����������, ��� ���. ������ ������ ���������� ����� �����. ��� �� ��� �� ��������� ��������, ��� �� ���, � �� �� ����. �� ������ ����� ���-�� ���?~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� ���������� ������ ����-������ ���������?~ GOTO 26
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY ~��, ������-��, ������ ��������� ������, ������? ��� �... ����� �����, ��� ������� �������� ������ ������� ������� � ������������ � ���. �� �� ��������� ��, ����� �����, ��� ��� ����� ��������... ��������, �� ������ �������. ���� ���� �����, ��� ��� �� ��� �����. �������������, �� ������ ��? � ����� ������, ���� ������, ������ ���������� ����. �������� ��������� �� ������-������. �� � �� ������� ��� ������ ����... �� ��� �� ������.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 27
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY ~�� ��� ��, � �� �������� �������� ��� ������� ������� � ����� ���������� ��������. ��������� �������. ��� ��� ��������, ������� �������� ��������� ������� ������� ��� ������ �����������. �� �� �� ���������, �, �� ������, ��� ����� ���� ����� �������... �����, ��� ������ �� �������. ������ ���� �����, ���� ��� �� ��� �����. ������� ����, �����? ��� �, ���� ������, ������ ���������� ����. ������� ��������� ��������� �� ������-������. ������ � ��� �� ������� ���� ������... ���� �� �� ��� ����������.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 27
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY ~���... ���, � �� �����, ��� ���� ������������ ��� � ������������. � �� ������ ���� ������... ���... �����������. � ����� ����, �������� ������� ������� �������, ����� ����������� � ���. ��� ������� � ������-�������� ����� ������... �� �������� �������� ��� ��� ����.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~��� �� �������� ���������� �� ������, ���� �� ������, ��� ��� ����� �������.~ GOTO 27
  IF ~~ THEN REPLY ~���� � ������ ������� ����� �����, ������� ��� ����� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 34 // from: 4.2
  SAY ~�... � �� ���� � ����� �������. ����, ��� � ���� ���� � �����... ���! �� �� ��� ������ ���, ��� � ���� ����. ��� �� ��� ��� ����? ����������!~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy(Myself),12,CHR)Global("Robbed","LOCALS",0)~ THEN BEGIN 31 // from:
  SAY ~��� �� ������� �����, �������? ��� ������� �������������!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~� �� �������. � �� ������� ��� �����.~ GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~���� � ������. � ���, ���� ����!~ GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~���� � ������. � ���, ���� ����!~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �����.~ GOTO 5
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 32 // from:
  SAY ~���������� ����� ���������, ��? ��� ���-������ �����?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Robbed","LOCALS",0)~ THEN BEGIN 33 // from:
  SAY ~������ �� ��������� ����? ��� ������! ���! ������� ������� ��������!~
  IF ~~ THEN EXIT
END


// ����� ������� ����� 3 ���� �����   ��������   ���� ������� ����������� ����������� ������� � ��������� ���� ������ ���������� �������.

BEGIN ~TANIT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",0)Global("TanitTired","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~������������, �����. � �����. � ���������� ������� ���, ����� ���� ��� ����� � ����� ��� ����� ��������.~ [TANIT54]
  IF ~~ THEN REPLY ~� ���� �������� � ����... � �� ������ ��������.~ GOTO 1
  IF ~~ THEN REPLY ~���� ���� �������� ����������, �?~ GOTO 2
  IF ~~ THEN REPLY ~�����, �������. ��� �� ��������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������, ��� ����, ��� �� ������ �������� �����. � ��� ���� �������? ��������� ������������, � ������, �� � ���� ������� ���������.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~��� �������. ���� ����� <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~��� �������.~ GOTO 47
  IF ~~ THEN REPLY ~� ���� ��� ��������.~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�� ����� ���� �����... ������. ������ ��������� �������, � �� ���������. �������, �� ������� ��� �� ����� ��������?~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~��� �������. ���� ����� <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~��� �������.~ GOTO 47
  IF ~~ THEN REPLY ~� ���� ��� ��������.~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~� ����� ����� ��� ����� ������ ������. ������� ����� ������ ��� ��� �����, �� �������� ��������� ������ �������� ��� ������� �������.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~��� �������. ���� ����� <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~��� �������.~ GOTO 47
  IF ~~ THEN REPLY ~� ���� ��� ��������.~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�� ��������. �����, �� ��� ���������� � ���������. �� �������� ������� �������. �� ������ ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~���������, <CHARNAME>. � ������ ���������� ��� � ����. ��� ��� �������? �����, � "�����", �� ��� ����� ������ ����� �������.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 48
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 11
  IF ~~ THEN REPLY ~������ ��� ���������! ����� ����� ���� �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 47 // from: 1.1
  SAY ~���������, � ������ ���������� ��� � ����. ��� ��� �������? �����, � "�����", �� ��� ����� ������ ����� �������.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 48
  IF ~~ THEN REPLY ~������ ��� ���������! ����� ����� ���� �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~��� ����, �� � �� ���� �������� � ����, ���� � ��� ��� ���. ��������. ���������� � �������, �� ��� ��� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~������ ���� �� ������ �������� ���, ���� ���� �� ��� ����. � ���� ���� � ����������, � ������, ���� �����. �������, ��� ��� ���������?~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~� �������. ������ ��� �� �������.~ GOTO 15
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~�? ���� ����� � ����, ��� �� ���������. ���� ������, ���� ���� � ������ ������, ���� ��� ��� ����������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 18
  IF ~~ THEN REPLY ~��� ����� �������������� - ��� ��� ������������ ����.~ GOTO 19
  IF ~~ THEN REPLY ~������ ��? �� ���������� �� � ����?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 39
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 39 // from: 8.6
  SAY ~����������, ���� �� ������ � ���-�� ���������, �� ����� ����������� �� �����. � �� ����� ����������� � ��������� �����.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~���� ��� - ��, ���� �� ������. � �� �� ���������, �� � ������ ���, ��� � ���� �����.~
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 23
  IF ~  RandomNum(2,1)~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 25
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY ~����� ����! � �� � ��������, <CHARNAME>, �� ��������� ��������, ��� �� �� ���� ��������? ��� ������ ����� �����?~
  IF ~~ THEN REPLY ~����� ��������. � ����� ��������.~ GOTO 40
  IF ~~ THEN REPLY ~������ ����� ����� ��� ������ ������. � ��� �� ������.~ GOTO 41
  IF ~~ THEN REPLY ~����� ����. ����� ��� �������. �������-�����.~ GOTO 42
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 48 // from: 5.4
  SAY ~����� ����! � ��������, �� ��������� ��������, ��� �� �� ���� ��������? ��� ������ ����� �����?~
  IF ~~ THEN REPLY ~����� ��������. � ����� ��������.~ GOTO 40
  IF ~~ THEN REPLY ~������ ����� ����� ��� ������ ������. � ��� �� ������.~ GOTO 41
  IF ~~ THEN REPLY ~����� ����. ����� ��� �������. �������-�����.~ GOTO 42
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 40 // from: 10.1
  SAY ~�������. ����� ��������, ��� ����. � �������� �� ����.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",3)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 10.2
  SAY ~�����, ��� ����� ���������, ��� ����. �������� �� ����, �� ������� �������� ���� ����� ����.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 10.3
  SAY ~��, � �����, ��� ����� ��������. �������� �� ����. ��������� ������. ���������.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY ~� �� ���� ��� �������, ��... ��� ����, ��� ����� ���� ������ �������, ����� ������� ����... ���������� �������.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY ~��� ����������� ����, � ��� �� �������� ��������� ���� �������... �������. �������... �� ����� ����������. � ��������� ����������� - ��� ��� ��� ������ �������� �����.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.7
  SAY ~��� ���� �����, �� ���� �� �������� ���������� �� ���� ��� ���, ��� �������� ������ ������ �������. �� ������������� ������� ����?~
  IF ~~ THEN REPLY ~� ������ ����� ���.~ GOTO 26
  IF ~~ THEN REPLY ~��� ����� ����. ��������~ GOTO 27
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY ~�������������, ��� �� ��� ���� ����������. ������ ������ ���� �������� �� �����, ������� ����� �� ������, ������ �� �������� ���������������. �� ������ ��� ��� ����������. � �� ��������� �� ��������, �� ������������ ���� �������. � �����, � ���� - ����� ��������� ���������. �� ������ ����� �����, � �������� ���������� ���� ������, ��� �� ��� ��������. �� - �������, ������� �����, ��� �� �����.~
  IF ~~ THEN REPLY ~������ ���������. � ��� �������.~ GOTO 15
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY ~�� ���������� � ����� ������������, �� ����� �� �������� ���� �������? �������, ���������� �������, ����� ������, ��� ����� - ��� �� �� ��������.~
  IF ~  Class(Player1,THIEF)~ THEN GOTO 28
  IF ~  OR(2)Class(Player1,DRUID)Class(Player1,RANGER)~ THEN GOTO 29
  IF ~  OR(3)Class(Player1,CLERIC)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN GOTO 30
  IF ~  OR(2)Class(Player1,MAGE)Class(Player1,BARD)~ THEN GOTO 31
  IF ~  Class(Player1,FIGHTER)~ THEN GOTO 32
  IF ~  !Class(Player1,THIEF)
!Class(Player1,DRUID)
!Class(Player1,RANGER)
!Class(Player1,CLERIC)!Class(Player1,PALADIN)!Class(Player1,MONK)!Class(Player1,MAGE)!Class(Player1,BARD)!Class(Player1,FIGHTER)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 7.4
  SAY ~�������. �� ����� ������ ���, ��� �� ��������. � �������� ���������, �������. ������� - ��� ����������.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 48
  IF ~  RandomNum(2,2)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 11
  IF ~~ THEN REPLY ~������ ��� ���������! ����� ����� ���� �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY ~�������. ��� �������, ��� ��������� ����� ���������� �������� ���� �������� �������. ��� �� �������� ��� ���, �� � ��� �������.~
  IF ~~ THEN REPLY ~������ ��? �� ���������� �� � ����?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 39
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY ~�����, ��� ��� ��� �������. �����, � ��������� � ����� ���� ��������.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY ~������, ��� �������� ����, ���� �� �����, ���� �����. � ������� ������ ��. ������� ��������� �� �������. ��������� ����� ���� ����� ������������ ���������. � �������� �������� ������������ � ���������, ������� ���, ��������, �� ������� � ������ � ����� �����.~
  IF ~~ THEN REPLY ~������ ��? �� ���������� �� � ����?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 39
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY ~� ��� � ���� � ����� ��������. ����� � �����, � �� ���� �������� ������� � ����� ��� ����������. �����, � ������� �������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 18
  IF ~~ THEN REPLY ~��� ����� �������������� - ��� ��� ������������ ����.~ GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� *���* �����? ���, ����. �� ������� ���, ����� ������ ������. ��!~ GOTO 39
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY ~����������, ���� �� ������ � ���-�� ���������, �� ����� ����������� �� �����. � �� ����� ����������� � ��������� �����. ��� ���� - �������. ���� �� �� ������ � ��� ���������, ����� � ��� �� ������. ���... � ��� �� ������ ����������?~
  IF ~~ THEN REPLY ~� �� �������� ��������.~ GOTO 33
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY ~�� ��������� ���, ������ �� ����� ����������� � �������, ����� ���� �� ��������� � ������� ���������. ����� ���������������� � ���� � ��������� ����� ��������� ����� ������. � ���� ��������� ��� �������, ���� ������. � ����� ��� �����, �� � ��, ��������, ����.~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 9.1
  SAY ~��������, �� ����� �� ��������� �������� �� ����. ������, ��� �� ���������. �� �����, ����� ����� ������� ����� ���� ������ ������.~
  IF ~~ THEN REPLY ~�������, ��� �� �������� ������� ���� ������������ ���� � ��������  ����.~ GOTO 38
  IF ~  RandomNum(2,1)~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 25
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY ~���� ��������� ������ ���� ���������, �� � �����-���� ���������� ������. ��� �� ��������, � �� ���. ���� �� ��� �� ������, � ������ �� ���� � ���� ��������. ����� �� ����. ������ ������� �� � ����. ��� ��������.~
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 23
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 9.3
  SAY ~�����, ��� ��� ��� �������. �����, � ��������� � ����� ���� ��������.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY ~� ���. �����, �� ��� ���������?~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~����� ��... ������ � ��� � �������?~ GOTO 48
  IF ~  RandomNum(2,2)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 11
  IF ~~ THEN REPLY ~����� � �����, �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY ~����� �� �������. �������� ��������� � �������.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY ~�� ������ ���� �������� �����. ������������. ��������, �� ������ ������ � ������. ��� ����� ��������� �� ��� ������. � ���� ��������� ��� �������, ���� ������. � ����� ��� �����, �� � ��, ��������, ����.~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY ~�� ������ �� ����, ��� ����� �������. ������� �������, �� �� ����������� �� ��� �� ��� ������? � ���� ��������� ��� �������, ���� ������. � ����� ��� �����, �� � ��, ��������, ����.~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 15.3
  SAY ~�� ��������� �������� ��������, ��������� � ����� �������� �������. ���� ������ ��� �� ��������, ��� ����� ���������� �� ���. � ���� ��������� ��� �������, ���� ������. � ����� ��� �����, �� � ��, ��������, ����.~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 15.4
  SAY ~�� ��������� ���, ������ ������ ����� ������ �����. ��������, ��-�� ����� �� �������? ��������� ����� ��� �������������. � ���� ��������� ��� �������, ���� ������. � ����� ��� �����, �� � ��, ��������, ����.~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 15.5
  SAY ~�� ��������� ���, ������ �� ����� ����������� � �������. ����� ���� � ��������� ����� ��������� ����� ������. � ���� ��������� ��� �������, ���� ������. � ����� ��� �����, �� � ��, ��������, ����.~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 21.1
  SAY ~�������� �������. ����������, ���� � �� ������ ������.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.1
  SAY ~�������, ��� ������� ������. ��� ����� ����� ������������ �� ���, ����� ���� �� ��������� �����. ��� ������ �����. � �� ���� ������ ��� � ����� �����, <CHARNAME>, �� �� ������ ������ ��� ����. � ������ �� ��� �� ������.~
  IF ~~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 24
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 34 // from:
  SAY ~����� ��������, ��������, �� ��� �������� �������� ������ ��������. ����������, �������� �� ������ ��� ���.~ [TANIT50]
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",1)~ THEN BEGIN 34 // from:
  SAY ~������� ��� ����� ������ �� �������. ��� �� ����� �������.~ [TANIT51]
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",0)GlobalGT("TanitTired","MYAREA",0)~ THEN BEGIN 35 // from:
  SAY ~��������, �� � ������ �� �������, � ����� ��, ��� ����. �������, ��� �� �������� ��� ���������.~ [TANIT52]
  IF ~  IsGabber(Player1)~ THEN GOTO 43
  IF ~  !IsGabber(Player1)~ THEN GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY ~��, <CHARNAME>. �� ������ ���������. �������, ���� ������� �������� � ��� �������� ������������?~
  IF ~~ THEN REPLY ~� ������ ������� �����. �������, � �� ����.~ GOTO 44
  IF ~~ THEN REPLY ~�� ��� ���������. �������, � ��� ���� ������� ��������.~ GOTO 45
  IF ~~ THEN REPLY ~�� ���� ���� �� ������ �� ���� ����. ��!~ GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY ~<CHARNAME>, �� ����� ��������� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY ~� ������� �� ����� �������� ���� ������, ����� ����. �� ���������� ������ ��������� ���� ������� � ������ ������. �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY ~�������� ���������. ����, ��� � �� ���� �������� �� ��� �������� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from: 35.1
  SAY ~��, ��� ��. �� ������ ���������. �������, ���� ������� �������� � ��� �������� ������������?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~� ������ ������� �����. �������, � �� ����.~ GOTO 44
  IF ~  !IsGabber(Player1)~ THEN REPLY ~� ������ ������� �����. �������, � �� ����.~ GOTO 50
  IF ~~ THEN REPLY ~�� ��� ���������. �������, � ��� ���� ������� ��������.~ GOTO 45
  IF ~~ THEN REPLY ~�� ���� ���� �� ������ �� ���� ����. ��!~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 43.1
  SAY ~�, �� ����� ��������� ����.~
  IF ~~ THEN EXIT
END


// ����� ������ - ������ - ��� ����� �� ����� ��������

BEGIN ~MAEGAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~���������� ������. ��� ����... � ��� �����... ������-����� �������, �� ���� � ����� ���� ��������, � � ������ ��������, �������� ����������.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������ �� ��� ������ � ������, ��� ������ ���� ��������� ����� ���� ����������. � ���� �� �������, � ����� ���� �� �����������, ���������� ���.~
  IF ~~ THEN REPLY ~� �������� ���� �����. ������.~ GOTO 2
  IF ~~ THEN REPLY ~����� �������� �� ������������. � �����.~ GOTO 3
  IF ~~ THEN REPLY ~� ����� �� ��� ����, ����� � ������� ������! ���������!~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~�� ����� ���. ������ ��, ��������� ������� ���� ������ ����� �������������. ��� ������ ����, ������������ ���� � ����, ��� � �... ��� �� ���������?~
  IF ~  PartyHasItem("Treatise")~ THEN REPLY ~���� ��������.~ GOTO 5
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~� ��������. ������-����� ����������� ����?~ GOTO 6
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~� ��������. ������-����� ����������� ����?~ GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~������, ����... �... ���� ������� ����?~ GOTO 6
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~������, ����... �... ���� ������� ����?~ GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~�... ����? ��, ��������... ����... ������� �����... � ������?~ GOTO 7
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~�... ����? ��, ��������... ����... ������� �����... � ������?~ GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~� �� ����. ��� ��� ��� ��������?~ GOTO 8
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~� �� ����. ��� ��� ��� ��������?~ GOTO 18
  IF ~~ THEN REPLY ~������ � �����? �������� �������?~ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~�� �� ����������� ������ ��������� ����?! �������������!~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT // ReallyForceSpell(Myself,HOLY_LIGHT_FROM_ABOVE) CreateVisualEffectObject("SPUNHOLY",Myself)
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~�� �������� ��������� ���. � ���� ����, � �� �� � ����� ��������� ��� ����. �� ������ �� ��������.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~���... ���������. ����� ��� ��� ��� ���������. ������ ���� �������� ��� ������ ����������? ������ ����, ����� ��� ��� ������������ ������.~
  IF ~~ THEN REPLY ~�������� ������� �����, ������� �� ����� �� �����.~ GOTO 10
  IF ~~ THEN REPLY ~���? �! �, �� �������. ����� ������.~ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY ~�� ������ �������! ����� ��� �������� � ����������� ������ ��, ��� ��� �����! ��� � ��������! � ���� ��������� ��� ��� ����������� ���� ����, � ��� �� ���� ��� �������������!~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY ~�� �������! �� ���� ���������� ���� ���� �������! ����� �����, � � ���������� ����! �������� ���� ���� ��� ��� -- � ������ �������� �����!~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY ~��� ����� �� ���� ���������, ��. ���� �� ���� ���� �������� ���-�� � ����� ����� ����������� �����������, � ����� �� ���� ��, ��� ����������� ���. � ������ ���� � ������� � ����� ������.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY ~���... ��� �� ��������, ��� ������� �������. ��� � ���� ����� �����, �������� �� ���� ��� ������, � ������ �� �� �������� ��, ��� ����������� ���.~
  IF ~  PartyHasItem("Treatise")~ THEN REPLY ~���� ��������.~ GOTO 5
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~� �� ����. ��� ��� ��� ��������?~ GOTO 8
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~� �� ����. ��� ��� ��� ��������?~ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~����� �� �����? ��� �����������. ��������, �� ����� ����� ��. � ���� ����� ��������� �� ��������� � ������� �������, ����� �� ��� �������.~
  IF ~~ THEN REPLY ~����� ��������. ����� ����, � ���� ���� ������ �������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ����� ���� ����, �� ��� ���������� �����.~ GOTO 13
  IF ~~ THEN REPLY ~���� ��� ���� ������, � �������� ������ �������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ���� �������� ����. � ������ ������� ��� �� ��������.~ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~� ���� �������� ������, �� ����� ������ ������������������. ����� �� ��, ��� � ������, � ������� �����������, ��������� � ���� �������. ���� �� ������. �������-�� � ����� ���������.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)GiveItemCreate("Miralis",LastTalkedToBy,1,0,0)AddexperienceParty(20000)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY ~���? ���, ������ ���������. ������, � �����, ��� ��� ������ �� �����. ������. "������ �������" <HESHE> �������. ������� ��������. ������, ������� ������� � ��� ���? �? �� � ���� �� ������ ����� ���� ��������� �����. ������ ������� - � �� ����������� ����!~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY ~��������� ��� ���� � �����, ��� ������ �������� ����. �� � � ��� �� ����.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY ~��, ��... ��� �� ��� ������������... ���� ���� ��������� ������� �������, ����� ������� ����������� � ���� ��������. ������, ������� ������� � ��� ���? �? �� � ���� �� ������ ����� ���� ��������� �����. ������ ������� - � �� ����������� ����!~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY ~�� �������, ���� ���� ���� ���������� �� ����-�� �������. ������ ���� ������. � ��� ����� �������. ������, ������� ������� � ��� ���? �? �� � ���� �� ������ ����� ���� ��������� �����. ������ ������� - � �� ����������� ����!~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY ~���������... �� ��������? �� ����, �� ��� ��������� �� ������� � ����� ����������� �� ��� ������� ��������? ��-�, � �������� ���� ������ ��������. �� ��, <SIRMAAM>. ������, ������� ������� � ��� ���? �? �� � ���� �� ������ ����� ���� ��������� �����. ������ ������� - � �� ����������� ����!~
  IF ~~ THEN GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Warning","LOCALS",1)~ THEN BEGIN 17 // from:
  SAY ~��� ����... � ��� �����... ������-����� �������, �� ���� � ����� ���� ��������, � � ������ ��������, �������� ����������.~
  IF ~~ THEN REPLY ~� �������� ���� �����. ������.~ GOTO 2
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4
  SAY ~�� �������! �� ���� ���������� ���� ���� �������! � ������ �� �������� ��������.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)DestroySelf()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",1)~ THEN BEGIN 19 // from:
  SAY ~������! � ���� ����, � �� �� � ����� ��������� ��� ����. �� ������ �� ��������.~ ~������ ��������! � ���� ����, � �� �� � ����� ��������� ��� ����. �� ������ �� ��������.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)DestroySelf()~ EXIT
END

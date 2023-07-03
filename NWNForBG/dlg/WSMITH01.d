// creator  : weidu (version 24600)
// argument : WSMITH01.DLG
// game     : .
// source   : ./DATA/TB#GEN1.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~WSMITH01~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 61 even though they appear after this state */
~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY #59654 /* ~�? ��� �����? �������-<RACE> ������ �� ���� �������, ��� � ����. ������� �� ��� ����� �������, ����� ��� � ��� �����... ���� � ���-�� ��� ���� �������, �������?~ */
  IF ~~ THEN REPLY #59658 /* ~��� ��?~ */ GOTO 1
  IF ~~ THEN REPLY #59659 /* ~��� �� ��� ��������?~ */ GOTO 2
  IF ~~ THEN REPLY #59660 /* ~��, ��� ������ ��������� �������� ���� "��������".~ */ GOTO 3
  IF ~~ THEN REPLY #59661 /* ~���, �������. � ��� �����.~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #59662 /* ~���� ����� ���������. � ������, �����, �� �������, ��� �� ����, �?~ */
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY #59664 /* ~� - <GABBER>. ������� �������������.~ */ GOTO 5
  IF ~CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY #59665 /* ~� - <GABBER>, ���� ���� ��� ��� �����.~ */ GOTO 6
  IF ~~ THEN REPLY #59667 /* ~������� ���� ����� ��� ���, ��� �� �����.~ */ GOTO 7
  IF ~~ THEN REPLY #59668 /* ~����� ��� ����������, � ������ ���� �������, ��� � ���� ���� �� �������.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 58.1 7.0 6.0 5.0 3.3 1.3 0.1
  SAY #59670 /* ~� ������ �� ������. � ������ ������ � �������, � ������� ������ �� �����. � ���� ������� ����������� ���, ��� ���������.~ */
  IF ~~ THEN REPLY #59671 /* ~� ��� �� �������?~ */ GOTO 8
  IF ~~ THEN REPLY #59672 /* ~�� ������ ������ ���������� �������, ������ � ��� ������?~ */ GOTO 8
  IF ~~ THEN REPLY #59673 /* ~��, ����� � �����.~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #59676 /* ~��� �������. � �� ����� ������� ����, <GIRLBOY>. ������, ����� ��������� ������� ���� ���-������ ��-�������?~ */
  IF ~~ THEN REPLY #59677 /* ~� - <GABBER>. ������� �������������.~ */ GOTO 5
  IF ~~ THEN REPLY #59678 /* ~� - <GABBER>, ���� ���� ��� ��� �����.~ */ GOTO 6
  IF ~~ THEN REPLY #59679 /* ~������� ���� ����� ��� ���, ��� �� �����.~ */ GOTO 7
  IF ~~ THEN REPLY #59680 /* ~����� ��� ����������, � ������ ���� �������, ��� � ���� ���� �� �������.~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 9.2 7.3 6.3 5.2 2.2 0.3
  SAY #59681 /* ~������ ��� ��� �� ������ ����� ������, �������. ����������� ��� ������ ��� � ����� ��������, ��� ����, � ���� ������� �� ��������� ���������.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 1.0
  SAY #59682 /* ~���. ����� ���������� � ��� �����, <GABBER>. �����, ���� ���� ���� �� ������� ������?~ */
  IF ~~ THEN REPLY #59683 /* ~�������� �� ���������, ��� � ���� ���� �� �������.~ */ GOTO 2
  IF ~~ THEN REPLY #59684 /* ~� ��� �� �����?~ */ GOTO 8
  IF ~~ THEN REPLY #59685 /* ~������-��, ���. � �����.~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1 1.1
  SAY #59687 /* ~��, ��� ��� �����... �� �� � ���� � ����� � ����-�� ����������. �� ���, <GABBER>... ���� ���-������ ����� �� ������� ������ ��� ������ ��� ����������?~ */
  IF ~~ THEN REPLY #59688 /* ~��� �������� �� ���������, ��� � ���� ���� �� �������.~ */ GOTO 2
  IF ~~ THEN REPLY #59689 /* ~� ��� �� �����?~ */ GOTO 8
  IF ~~ THEN REPLY #59690 /* ~� ��� ���� ��� ������ ������� ����������?~ */ GOTO 10
  IF ~~ THEN REPLY #59691 /* ~������-��, ���. � �����.~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.2 1.2
  SAY #59692 /* ~����� ���, ������ �� � ���� �����, � ������, �� � ���� � ������. �� ��� ��� �����. �����, �������, ���� ���� ���� �� ������� ������, �� � ������� ����� �������, ���?~ */
  IF ~~ THEN REPLY #59693 /* ~��� �������� �� ���������, ��� � ���� ���� �� �������.~ */ GOTO 2
  IF ~~ THEN REPLY #59694 /* ~� ��� �� �����?~ */ GOTO 8
  IF ~~ THEN REPLY #59695 /* ~� ��� ���� ��� ������ ������� ����������?~ */ GOTO 10
  IF ~~ THEN REPLY #59696 /* ~������-��, ������. � �����.~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 58.0 7.1 6.1 5.1 2.1 2.0
  SAY #59697 /* ~� ����� ������� �� ����� ���������, ���� �� ���������... ������ �����, ������� ������� ���� � ������ ����� �������� �����. ��!~ */
  IF ~~ THEN DO ~SetGlobal("TalkedToCromwell","LOCALS",1)~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #59698 /* ~��� ������ � ����� ������ ��� �����. ���� ��� ��������, � � �� ���� ������ ������, �� ����������. ������� ����������� �� �����-�� ��������� �����������.~ */
  IF ~~ THEN REPLY #59699 /* ~� ���� ���� ���-������, � ��� ����� ��������?~ */ GOTO 13
  IF ~~ THEN REPLY #59700 /* ~������ ���� ��������� ���� �����, ����� �������� ���-������?~ */ GOTO 11
  IF ~~ THEN REPLY #59701 /* ~�������, ��� ��� � ����. � �����.~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 7.2 6.2
  SAY #59702 /* ~��, ��� ���� ������. ��� � ���� ������ ������ ������� � ��� �����... ���� �� ���� ���-�� ������������, �������, ���� ��� ���� �����.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 58.2 9.1
  SAY #59703 /* ~��, ��� ��� ����������. �����, ������ ����� ��� �������, � �� � ������ ����������, ������� � ����� ������. ����� ������� ���-������ �� ��������� ������. � ����� ���� ����.~ */
  IF ~~ THEN REPLY #59704 /* ~� � ���� ���� ���-������, ��� ����� ����������?~ */ GOTO 13
  IF ~~ THEN REPLY #59705 /* ~����. ����� � �����.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 58.4 55.2 54.6 53.7 11.1
  SAY #59706 /* ~������ � ������ ���, <GIRLBOY>. ��������� ������ ���� ������� ����������.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 58.3 11.0 9.0
  SAY #59707 /* ~��... ��� ����� �� �������. ���-�� �����, ���� � ���� ��� ����. � ������� ��������� � ����� ���������, ���?~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("scalebl")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(4)
PartyHasItem("scaleb")
PartyHasItem("scalebl")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
  IF ~  PartyHasItem("chan16")
~ THEN GOTO 88
  IF ~  PartyHasItem("slng08")
~ THEN GOTO 92
  IF ~  PartyHasItem("quiver01")
~ THEN GOTO 94
  IF ~  PartyHasItem("blun14")
~ THEN GOTO 98
  IF ~  PartyHasItem("blun26")
~ THEN GOTO 102
  IF ~  OR(2)
PartyHasItem("dagg23")
PartyHasItem("sper11")
~ THEN GOTO 106
  IF ~  PartyHasItem("dagg21")
~ THEN GOTO 110
END

IF ~~ THEN BEGIN 14 // from: 113.0 109.0 105.0 101.0 97.0 93.0 91.0 87.0 84.0 80.0 76.0 73.0 69.0 65.0 60.0 13.0
  SAY #59708 /* ~��. ��... ����. � ���� ��� ������ ������, � ��� ����� ��������. ����� ���-������ ��������� �� ���-������ ����������, <GIRLBOY>, �� ������, ���� ������, ���?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 113.1 109.1 105.1 101.1 97.1 93.1 91.1 87.1 84.1 80.1 76.1 73.1 69.1 65.1 60.1 13.1
  SAY #59709 /* ~��... � ��� ����? ����� ����� �����-�� �������, ��?~ */
  IF ~PartyHasItem("scaleb")~ THEN GOTO 16
  IF ~!PartyHasItem("scaleb")
PartyHasItem("scaler")~ THEN GOTO 17
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 18
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
PartyHasItem("scalebl")~ THEN GOTO 114
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #59710 /* ~���, � ���� ��� ����� �������� �������. �� ��� ������� ���, ����������� ���������! � ���� ������� ������� ������ �� ���� �����, ����� ������.~ */
  IF ~~ THEN REPLY #59712 /* ~��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",1)~ GOTO 53
  IF ~PartyHasItem("scaler")~ THEN REPLY #59713 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 17
  IF ~!PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN REPLY #59714 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 18
  IF ~!PartyHasItem("scaler")
!PartyHasItem("misc12")
PartyHasItem("scalebl")~ THEN REPLY #59715 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 114
  IF ~!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scalebl")~ THEN REPLY #59715 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 53.1 16.1 15.1
  SAY #59716 /* ~�! ����� �������� �������, �������� �������� �������. �� ��� ������ �������� ������, ����� ������, <GIRLBOY>. ���� ��� ����������?~ */
  IF ~~ THEN REPLY #59717 /* ~� ��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",2)~ GOTO 53
  IF ~PartyHasItem("misc12")~ THEN REPLY #59718 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 18
  IF ~!PartyHasItem("misc12")
PartyHasItem("scalebl")~ THEN REPLY #59715 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 114
  IF ~!PartyHasItem("misc12")
!PartyHasItem("scalebl")~ THEN REPLY #59715 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 53.3 53.2 17.1 16.2 15.2
  SAY #59720 /* ~��. ����, � ���� ���� ������� ������. ��� ���� �� ��������� ������ ���� ������ ���������� ������ �� ���� �������. ������ ��������?~ */
  IF ~~ THEN REPLY #59721 /* ~� ��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",3)~ GOTO 53
  IF ~PartyHasItem("scalebl")~ THEN REPLY #59715 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 114
  IF ~!PartyHasItem("scalebl")~ THEN REPLY #59715 /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 53.6 53.5 53.4 18.1 17.2 16.3
  SAY #59723 /* ~������ ��� ��� �����. ��...~ */
  IF ~OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 20 // from: 113.2 109.2 105.2 101.2 97.2 93.2 91.2 87.2 84.2 80.2 76.2 73.2 69.2 65.2 60.2 19.0 13.2
  SAY #59724 /* ~��, � ��� ��� ��� � ���?~ */
  IF ~PartyHasItem("scrlag")
!PartyHasItem("hamm07")~ THEN GOTO 21
  IF ~!PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 24
  IF ~PartyHasItem("scrlag")
PartyHasItem("hamm07")
OR(2)
!PartyHasItem("brac06")
!PartyHasItem("belt08")~ THEN GOTO 25
  IF ~PartyHasItem("scrlag")
PartyHasItem("hamm07")
PartyHasItem("brac06")
PartyHasItem("belt08")~ THEN GOTO 26
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #59725 /* ~� ���� ���� ������ � �������� ������ ��������� ������, ���� �����. ����� �� � ���� ���� ����� �������� ������, �������� ���� ���� � ���� ���� ��������� ��������, � �� �� ������� ������.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 25.0 24.0 21.0
  SAY #59726 /* ~�� � ���� �� ���, ��� ��� ������ ��� �����. ����� �����-������ �������� ������ � ��� ��� ����, ����� ��� ����. ���� ���� ���� �����, <GIRLBOY>.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 55.1 27.1 22.0
  SAY #59727 /* ~���-�� �����, ���� �� � ���� ��� ���-������ � �������...~ */
  IF ~OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 24 // from: 20.1
  SAY #59728 /* ~����, � ���� ���� ����� �������� ������. ���� � ���� ��� �������� ���� ����, ���� ���� ��������� �������� � ������ � �������� ������ ��������� ������, � �� ������� ������ ������.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 20.2
  SAY #59730 /* ~�, � ���� ���� ����� �������� ������ � ������ � �������� ������ ��������� ������, ���� �����. ���� � ���� ��� �������� ���� ���� � ���� ���� ��������� ��������, � �� ������� ������������ ������.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 26 // from: 20.3
  SAY #59731 /* ~��... � ���� ���� ����� �������� ������, �������� ���� ����, ���� ���� ��������� �������� � ������ � �������� ������ ��������� ������... ���� �����.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #59732 /* ~�� ������ ��������� ����� �� ��� ������� � ������ ������� ���. � ��� �� ������� ��� ���� ���� ����, <GIRLBOY>... ����� ���� ����������, �������.~ */
  IF ~~ THEN REPLY #59733 /* ~��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",4)~ GOTO 55
  IF ~~ THEN REPLY #59734 /* ~���, ���� ��. � ���� ���� ��� ���-������ ����������?~ */ GOTO 23
END

IF ~~ THEN BEGIN 28 // from: 113.3 109.3 105.3 101.3 97.3 93.3 91.3 87.3 84.3 80.3 76.3 73.3 69.3 65.3 60.3 23.0 19.1 13.3
  SAY #59735 /* ~�? � ���� ��� ����� ������-�� ����, ��� ��? ������-��...~ */
  IF ~PartyHasItem("sw1h54a")
OR(2)
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")~ THEN GOTO 29
  IF ~PartyHasItem("sw1h54b")
OR(2)
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54c")~ THEN GOTO 30
  IF ~PartyHasItem("sw1h54c")
OR(2)
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54a")~ THEN GOTO 31
  IF ~PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #59736 /* ~���, � ���� ��� ������� ����, �� ��� ����������� ������ �� ����� � ������, ����� �������� ����� ������. ����.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #59737 /* ~���, � ���� ��� �� ����� ���� ������ ����. �� ��� ����������� ������� � ������ �� �����, ����� �������� ��� ���� ����� ������. ����.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #59738 /* ~��. �������� ������ �� �����, �� ��� ������ � ������� � �� ����� �������� ��� ���� ����� ������. ����.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 28.3
  SAY #59739 /* ~��... ����. � ���� ��� ������� � ������ �������� ����. � ������ �� ����� ������� ����. �� ����� ����� � ���� �������� ��� ���� ������ ���.~ */
  IF ~~ THEN REPLY #59740 /* ~��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",5)~ GOTO 54
  IF ~~ THEN REPLY #59741 /* ~���, ���� ��� �� ����������. ���-������ ��� ��������� ����?~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 54.1 32.1 31.0 30.0 29.0
  SAY #59742 /* ~���, ��� ��� � ���� ��� � ������� ����������? ��...~ */
  IF ~OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 34 // from: 113.4 109.4 105.4 101.4 97.4 93.4 91.4 87.4 84.4 80.4 76.4 73.4 69.4 65.4 60.4 33.0 23.1 19.2 13.4
  SAY #59743 /* ~��. � ��� ���? ����� ����? ������ �� ������ ������...~ */
  IF ~PartyHasItem("bow19a")
!PartyHasItem("bow19b")~ THEN GOTO 35
  IF ~!PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 36
  IF ~PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #59744 /* ~��, � ���� ��� ������ ����, ��� ������ ������� ������� �����, �� � ���� ��� ���������� ������ ��� ����. ����� ��, � ����� � ����� ������������ ��� ���� ���.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #59745 /* ~��, � ���� ��� ������ ��� ����, ��� ������ ������� ������� �����. �� ��������� ���. ����� ������� ���, ������� ���, � � ������������ ��� ���� ���.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY #59746 /* ~��. ���, ��� ������ ������, ��� ���� ����. � ���������, � ������. � ����� ������������ ��� ���� �������� ��� ������ �� ������ ���������. ��� �������� ������ ������.~ */
  IF ~~ THEN REPLY #59747 /* ~� ��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",6)~ GOTO 54
  IF ~~ THEN REPLY #59748 /* ~���, �� �����. � ���� ���� ��� ���-������ ���������?~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 54.2 37.1 36.0 35.0
  SAY #59749 /* ~��������� ������, <GIRLBOY>. ��...~ */
  IF ~OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 39 // from: 113.5 109.5 105.5 101.5 97.5 93.5 91.5 87.5 84.5 80.5 76.5 73.5 69.5 65.5 60.5 38.0 33.1 23.2 19.3 13.5
  SAY #59750 /* ~��... ��... ���. ��, ��� ��� ��� ���������...~ */
  IF ~PartyHasItem("halb09a")
!PartyHasItem("halb09b")~ THEN GOTO 40
  IF ~!PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 41
  IF ~PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #59751 /* ~� ���� ���� ������ ������� ������� ��������. ����� ����� � ��� ������, � ��� ������� ������ ��� ������� ������.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #59752 /* ~� ���� ��� ������ �� ������ ��������. ����� ��� �� ������� ���� �������... ���������. ����� ����� � ��� ���������� ������, � ������ �� ��� ����.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 39.2
  SAY #59753 /* ~��... � ���� ��� ������ � ������ ��������. ���� ����, ������������� �����. ����� ���������. ����� ������, � ��������� �������� �� ��� ����.~ */
  IF ~~ THEN REPLY #59754 /* ~��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",7)~ GOTO 54
  IF ~~ THEN REPLY #59755 /* ~���, ���� ��� �� ����������. ���-������ ��� ��������� ����?~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 54.3 42.1 41.0 40.0
  SAY #59756 /* ~�� � ������ ��� � ����. ����� ��� �������������, �? ��...~ */
  IF ~OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 44 // from: 113.6 109.6 105.6 101.6 97.6 93.6 91.6 87.6 84.6 80.6 76.6 73.6 69.6 65.6 60.6 43.0 38.1 33.2 23.3 19.4 13.6
  SAY #59757 /* ~��? � ��� ���? ������ �����? ��� ��� �� ������ ��������� �� �����...~ */
  IF ~PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")~ THEN GOTO 45
  IF ~!PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 46
  IF ~PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 47
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #59758 /* ~��... ������, � ���� ��� ������ �� ����������� ����. ������ ��� ��� ������� ����� ����. ����������... ����� �� ����������, ����� ���� � ���� ������ �������.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 46 // from: 44.1
  SAY #59759 /* ~��... � ���� ��� ������� ����������� ����, �� ��� ������� ������ ����� �� ��� ����. � ������������ � ����... ����� �� ����������, ����� ���� � ���� ������ �������.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 44.2
  SAY #59760 /* ~���. ������� � ������ �� ����������� ����������� ����. ����� �� ������� ���������� �����, � ������ ����� ��� ��� ���� ������.~ */
  IF ~~ THEN REPLY #59761 /* ~��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",8)~ GOTO 54
  IF ~~ THEN REPLY #59762 /* ~�� �����. � ���� ���� ��� ���-������ ���������?~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 54.4 47.1 46.0 45.0
  SAY #59763 /* ~������� ������. ��... ����...~ */
  IF ~PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~!PartyHasItem("misc5k")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 113.7 109.7 105.7 101.7 97.7 93.7 91.7 87.7 84.7 80.7 76.7 73.7 69.7 65.7 60.7 48.0 43.1 38.2 33.3 23.4 19.5 13.7
  SAY #59764 /* ~���... ���� ��� ���-��. ����� ������ �����-��, �? ���-�� �����...~ */
  IF ~!PartyHasItem("blun12")~ THEN GOTO 50
  IF ~PartyHasItem("blun12")~ THEN GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #59765 /* ~��� �� �������, ��? ��� �� ������ ������. ����� �����-������ �������� ������ ����������, �������� �� ������� ������ �� �������.~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY #59766 /* ~� ���� ��� �������, ���? �� ��� � ������ ����������. ���� ������� ����������� ������ �������� � ����������� ������� ��, ����� �� ������ �������� �����.~ */
  IF ~~ THEN REPLY #59767 /* ~� ��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",9)~ GOTO 54
  IF ~~ THEN REPLY #59768 /* ~���, �� �����. ���-������ ��� ��������� ����?~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 54.5 51.1 50.0 48.1 43.2 38.3 33.4 23.5 19.6
  SAY #59769 /* ~��... ����, �� ���� ������ ������ ���������� ��� ���� �����. �����, � ������ ��� �����, <GIRLBOY>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 18.0 17.0 16.0
  SAY #59771 /* ~��� ����, <GIRLBOY>. ������ ����� ������ ���� 5000 �������, �� ������, � ��� ��� � ��� �����������, ���� �������� �������� �� ���� � ������ ��� � �����.~ */
  IF ~PartyGoldGT(4999)~ THEN REPLY #59775 /* ~�������. ��� � �������.~ */ DO ~TakePartyGold(5000)
DestroyGold(5000)~ GOTO 56
  IF ~Global("ForgeItem","GLOBAL",1)
PartyHasItem("scaler")~ THEN REPLY #59777 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 17
  IF ~Global("ForgeItem","GLOBAL",1)
!PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN REPLY #59779 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 18
  IF ~Global("ForgeItem","GLOBAL",2)
PartyHasItem("misc12")~ THEN REPLY #59780 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 18
  IF ~Global("ForgeItem","GLOBAL",3)~ THEN REPLY #59781 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~Global("ForgeItem","GLOBAL",1)
!PartyHasItem("scaler")
!PartyHasItem("misc12")~ THEN REPLY #59782 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~Global("ForgeItem","GLOBAL",2)
!PartyHasItem("misc12")~ THEN REPLY #59783 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~~ THEN REPLY #59778 /* ~���, ���� ��. �����, � ����� �����.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN 54 // from: 51.0 47.0 42.0 37.0 32.0
  SAY #59784 /* ~��� ����, <GIRLBOY>. ������ ����� ������ ���� 7500 �������, �� ������, � ��� ��� � ��� �����������, ���� �������� �������� �� ���� � ������ ��� � �����.~ */
  IF ~PartyGoldGT(7499)~ THEN REPLY #59785 /* ~�������. ��� � �������.~ */ DO ~TakePartyGold(7500)
DestroyGold(7500)~ GOTO 56
  IF ~Global("ForgeItem","GLOBAL",5)~ THEN REPLY #59786 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 33
  IF ~Global("ForgeItem","GLOBAL",6)~ THEN REPLY #59787 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 38
  IF ~Global("ForgeItem","GLOBAL",7)~ THEN REPLY #59788 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 43
  IF ~Global("ForgeItem","GLOBAL",8)~ THEN REPLY #59789 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 48
  IF ~Global("ForgeItem","GLOBAL",9)~ THEN REPLY #59790 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 52
  IF ~~ THEN REPLY #59791 /* ~���, ���� ��. �����, � ����� �����.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN 55 // from: 27.0
  SAY #59792 /* ~��� ����, <GIRLBOY>. ������ ����� ������ ���� 10 000 �������, �� ������, � ��� ��� � ��� �����������, ���� �������� �������� �� ���� � ������ ��� � �����.~ */
  IF ~PartyGoldGT(9999)~ THEN REPLY #59793 /* ~�������. ��� � �������.~ */ DO ~TakePartyGold(10000)
DestroyGold(10000)~ GOTO 56
  IF ~Global("ForgeItem","GLOBAL",4)~ THEN REPLY #59794 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 23
  IF ~~ THEN REPLY #59795 /* ~���, ���� ��. �����, � ����� �����.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN 56 // from: 112.1 108.1 104.1 100.1 96.1 92.1 90.1 86.1 83.1 79.1 75.1 72.1 68.1 64.1 59.1 55.0 54.0 53.0
  SAY #59796 /* ~��� �������. �� ������ ������ ����� ������ ������ ����� ������. ������ ����� ��� ������... ������, ���� � ���� � �������.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("cromwell")~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 61 even though they appear after this state */
~GlobalGT("ForgeItem","GLOBAL",0)~ THEN BEGIN 57 // from:
  SAY #59797 /* ~�� ���, ����������, �������. ��������� �� ��������. ����� ������� ��� ����-������ ����������, ������ �� ������, ���� �����, ���?~ */
  IF ~~ THEN DO ~SetGlobal("ForgeItem","GLOBAL",0)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 61 even though they appear after this state */
~Global("ForgeItem","GLOBAL",0)~ THEN BEGIN 58 // from:
  SAY #59798 /* ~������ ����, <GIRLBOY>. ��� ������ ���� � ����� �����, ������-��. ���� ����-������ ����?~ */
  IF ~Global("TalkedToCromwell","LOCALS",0)~ THEN REPLY #59803 /* ~��� �� ������ ��������?~ */ GOTO 8
  IF ~Global("TalkedToCromwell","LOCALS",0)~ THEN REPLY #59799 /* ~��� �� ��� ��������?~ */ GOTO 2
  IF ~Global("TalkedToCromwell","LOCALS",1)~ THEN REPLY #59800 /* ~������ ���� ��������� ���� �����, ����� �������� ���-������?~ */ GOTO 11
  IF ~Global("TalkedToCromwell","LOCALS",1)~ THEN REPLY #59801 /* ~� ���� ���� ���-������, � ��� ����� ��������?~ */ GOTO 13
  IF ~~ THEN REPLY #59802 /* ~���, ���� ��.~ */ GOTO 12
END

IF ~~ THEN BEGIN 59 // from: 113.8 109.8 105.8 101.8 97.8 93.8 91.8 87.8 84.8 80.8 76.8 73.8 69.8 65.8 13.8
  SAY #88587 /* ~�, ������ ������ ��� ��������. � ���� ���������� ���, ����� ����� ���� ������, �� ��� ����� �������� ������ - 5,000.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #70892 /* ~� ���� ��� ������� ������.~ */ GOTO 60
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #70893 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",1)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("quiver02",1)
DestroyGold(5000)
DestroyItem("quiver02")
~ GOTO 56
  IF ~~ THEN REPLY #70894 /* ~���, ��� ��� �� �����.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.2 59.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
END

IF WEIGHT #0 ~  GlobalGT("CDCraft","ar0334",0)
~ THEN BEGIN 61 // from:
  SAY #59797 /* ~�� ���, ����������, �������. ��������� �� ��������. ����� ������� ��� ����-������ ����������, ������ �� ������, ���� �����, ���?~ */
  IF ~~ THEN DO ~SetGlobal("CDCraft","ar0334",0)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 113.9 109.9 105.9 101.9 97.9 93.9 91.9 87.9 84.9 80.9 76.9 73.9 69.9 13.9
  SAY #88594 /* ~������� ����, �?~ */
  IF ~  OR(2)
!PartyHasItem("ring05")
!PartyHasItem("potn20")
~ THEN GOTO 63
  IF ~  PartyHasItem("ring05")
PartyHasItem("potn20")
~ THEN GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #88595 /* ~��, � �������� ����������� � �������� �����������, �������� ����� ����.~ */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 62.1
  SAY #88596 /* ~������� ����... � �����������. ��, � ���� ��� ����. �� 10,000 � ���� ������ ������ �������.~ */
  IF ~  PartyGoldLT(10000)
~ THEN REPLY #67011 /* ~��� �� ������� ������.~ */ GOTO 65
  IF ~  PartyGoldGT(9999)
~ THEN REPLY #67012 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",2)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(10000)
TakePartyItemNum("helm29",1)
TakePartyItemNum("ring05",1)
TakePartyItemNum("potn20",1)
DestroyItem("potn20")
DestroyItem("ring05")
DestroyItem("helm29")
DestroyGold(10000)
~ GOTO 56
  IF ~~ THEN REPLY #67013 /* ~���. ��� ��� ���?~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.2 64.0 63.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
END

IF ~~ THEN BEGIN 66 // from: 113.10 109.10 105.10 101.10 97.10 93.10 91.10 87.10 84.10 80.10 76.10 73.10 13.10
  SAY #88597 /* ~� ��� ���?~ */
  IF ~  OR(3)
!PartyHasItem("helm31")
!PartyHasItem("compon12")
!PartyHasItem("compon13")
~ THEN GOTO 67
  IF ~  PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #88598 /* ~� ���� ���� ������, ��� ����������� ���� ����� � ��������� �����, � ������� ��� ���� ��������������. ��������� ��� �����, ������.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 68 // from: 66.1
  SAY #88599 /* ~� ���� ���� �������� ����, � ��� ����. �� 5,000 � �������� ���� - �������� ����� ���� ��� ������ �����.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #67003 /* ~� ���� ��� ������� ������.~ */ GOTO 69
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #67004 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",3)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("helm31",1)
DestroyItem("helm31")
TakePartyItemNum("compon12",1)
DestroyItem("compon12")
TakePartyItemNum("compon13",1)
DestroyItem("compon13")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #67005 /* ~���. ��� ��� ���?~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.2 68.0 67.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
END

IF ~~ THEN BEGIN 70 // from: 113.11 109.11 105.11 101.11 97.11 93.11 91.11 87.11 84.11 80.11 76.11 13.11
  SAY #88600 /* ~� ��� - �������� �����.~ */
  IF ~  OR(4)
!PartyHasItem("misc43")
!PartyHasItem("misc42")
!PartyHasItem("misc41")
!PartyHasItem("misc45")
~ THEN GOTO 71
  IF ~  PartyHasItem("misc43")
PartyHasItem("misc42")
PartyHasItem("misc41")
PartyHasItem("misc45")
~ THEN GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #88601 /* ~������� ������� �� ����������� ������, � �������� ������ ��������. ������� ��� ���������, �������, ������ ���� � �������� ������, � � ���� ��� ������.~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 72 // from: 70.1
  SAY #88602 /* ~���� ��������� ���� ������ ����������, ��������, ��������� ������� � ����� ����, � �� ������. ����� ������ 5,000.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66990 /* ~� ���� ��� ������� ������.~ */ GOTO 73
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66991 /* ~����� �����, ������ ���.~ */ DO ~SetGlobal("CDItems","ar0334",4)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("brac24",1)
DestroyItem("brac24")
TakePartyItemNum("misc41",1)
DestroyItem("misc41")
TakePartyItemNum("misc42",1)
DestroyItem("misc42")
TakePartyItemNum("misc43",1)
DestroyItem("misc43")
TakePartyItemNum("misc45",1)
DestroyItem("misc45")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66992 /* ~������. ��� ��� ���?~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.2 72.0 71.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
END

IF ~~ THEN BEGIN 74 // from: 113.12 109.12 105.12 101.12 97.12 93.12 91.12 87.12 84.12 80.12 13.12
  SAY #88603 /* ~��� - ����������� ��� ��������.~ */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #88604 /* ~�� 10,000 �������, � ����� �� ���������� �������.~ */
  IF ~  PartyGoldLT(10000)
~ THEN REPLY #66983 /* ~��� �� ������� ������.~ */ GOTO 76
  IF ~  PartyGoldGT(9999)
~ THEN REPLY #66984 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",5)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(10000)
TakePartyItemNum("brac22",1)
DestroyItem("brac22")
DestroyGold(10000)
~ GOTO 56
  IF ~~ THEN REPLY #66985 /* ~���. ��� ��� ���?~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.2 75.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
END

IF ~~ THEN BEGIN 77 // from: 113.13 109.13 105.13 101.13 97.13 93.13 91.13 87.13 84.13 13.13
  SAY #88605 /* ~��, ������ ����� ������� �������.~ */
  IF ~~ THEN GOTO 78
  IF ~  PartyHasItem("tome01")
PartyHasItem("tome02a")
~ THEN GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #88606 /* ~���� ����������� ��������, � ������� ������� �� ������� �������� ����� ������ ������� ����������� ����� ������.~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #88607 /* ~� ������� ���� �������� � �������� �������, �� 5,000 � ���� �������� ���� ������, ����� ��� �������� �������� �������.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66956 /* ~��� �� ������� ������.~ */ GOTO 80
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66957 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",6)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("tome01",1)
DestroyItem("tome01")
TakePartyItemNum("tome02a",1)
DestroyItem("tome02a")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66959 /* ~���. ��� ��� ���?~ */ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.0 78.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
END

IF ~~ THEN BEGIN 81 // from: 113.14 109.14 105.14 101.14 97.14 93.14 91.14 87.14 13.14
  SAY #88608 /* ~�, ��� ��� � ������� - ������.~ */
  IF ~  OR(2)
!PartyHasItem("scrl90")
!PartyHasItem("scrl7q")
~ THEN GOTO 82
  IF ~  PartyHasItem("scrl90")
PartyHasItem("scrl7q")
~ THEN GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #88609 /* ~������� ��� ������ ����������� � ���������� ��������, � � ���� ��� ������ �������.~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 81.1
  SAY #88610 /* ~�� ����� ������������ ��� ������ ����������� � ���������� ��������, ����� �������� ���� ����. ������ �����, ������ - ������ ����� 20,000 �������.~ */
  IF ~  PartyGoldLT(20000)
~ THEN REPLY #66938 /* ~� ���� ��� ������� ������.~ */ GOTO 84
  IF ~  PartyGoldGT(19999)
~ THEN REPLY #66939 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",7)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(20000)
TakePartyItemNum("clck02",1)
DestroyItem("clck02")
TakePartyItemNum("scrl90",1)
DestroyItem("scrl90")
TakePartyItemNum("scrl7q",1)
DestroyItem("scrl7q")
DestroyGold(20000)
~ GOTO 56
  IF ~~ THEN REPLY #66940 /* ~���. ��� ��� ���?~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.2 83.0 82.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
END

IF ~~ THEN BEGIN 85 // from: 113.15 109.15 105.15 101.15 97.15 93.15 91.15 13.15
  SAY #59709 /* ~��... � ��� ����? ����� ����� �����-�� �������, ��?~ */
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #88611 /* ~��, ����� ������ �������. ���� ������, ������ ���� ����� ����� �� 5,000.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66908 /* ~� ���� ��� ������� ������.~ */ GOTO 87
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66909 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",8)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("compon18",1)
DestroyItem("compon18")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66910 /* ~���. ��� ��� ���?~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.2 86.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
END

IF ~~ THEN BEGIN 88 // from: 113.16 109.16 105.16 101.16 97.16 93.16 13.16
  SAY #88612 /* ~��� ��� - �������� ���������� ���������, ���� ����� ������� ������.~ */
  IF ~  !PartyHasItem("scrl6t")
~ THEN GOTO 89
  IF ~  PartyHasItem("scrl6t")
~ THEN GOTO 90
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #88613 /* ~�� ������� ������� ������ ��� ��� �� �������. � ������� ������ ������ �� ������������� ������ � �� ��� ���� ����������, ��� ������� ������� �� ����� �� ���������.~ */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 90 // from: 88.1
  SAY #88614 /* ~� ������� ����� ������ ������ �� ������������� ������ � �� ��� �������, ��� ������� ������� �� ����� �� ���������. �� ��� ��������, ��������� ������ ����� � ���������� ���������, � ������ ����� 40,000.~ */
  IF ~  PartyGoldLT(40000)
~ THEN REPLY #66900 /* ~� ���� ��� ������� ������.~ */ GOTO 91
  IF ~  PartyGoldGT(39999)
~ THEN REPLY #66901 /* ~�������, ������.~ */ DO ~SetGlobal("CDItems","ar0334",9)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(40000)
TakePartyItemNum("chan16",1)
DestroyItem("chan16")
TakePartyItemNum("scrl6t",1)
DestroyItem("scrl6t")
DestroyGold(40000)
~ GOTO 56
  IF ~~ THEN REPLY #66902 /* ~���. ��� ��� ���?~ */ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.2 90.0 89.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
END

IF ~~ THEN BEGIN 92 // from: 113.17 109.17 105.17 101.17 97.17 13.17
  SAY #88615 /* ~�, ������ �����. �� 5,000, � ������ �� ��� ������.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66872 /* ~� ���� ��� ������� ������.~ */ GOTO 93
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66873 /* ~������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",10)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("slng08",1)
DestroyItem("slng08")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66874 /* ~���. ��� ��� ���?~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.2 92.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
  IF ~  PartyHasItem("chan16")
~ THEN GOTO 88
END

IF ~~ THEN BEGIN 94 // from: 113.18 109.18 105.18 101.18 13.18
  SAY #88616 /* ~� ��� ��� �� ������? �, ������ ���������� ������, ��� �� ���������.~ */
  IF ~  !PartyHasItem("misc45")
~ THEN GOTO 95
  IF ~  PartyHasItem("misc45")
~ THEN GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #88617 /* ~���� ��������� ��� ������ ����, �� ������ �� ������ ��� � ��������.~ */
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 94.1
  SAY #88618 /* ~� ������� ����� ����� ���� � ��������� ����� ������� - 10,000, � ������� ��� ���� ������� ��� �� ������.~ */
  IF ~  PartyGoldLT(10000)
~ THEN REPLY #66800 /* ~� ���� ��� ������� ������.~ */ GOTO 97
  IF ~  PartyGoldGT(9999)
~ THEN REPLY #66801 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",11)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(10000)
TakePartyItemNum("quiver01",1)
DestroyItem("quiver01")
TakePartyItemNum("misc45",1)
DestroyItem("misc45")
DestroyGold(10000)
~ GOTO 56
  IF ~~ THEN REPLY #66802 /* ~���. ��� ��� ���?~ */ GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.2 96.0 95.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
  IF ~  PartyHasItem("chan16")
~ THEN GOTO 88
  IF ~  PartyHasItem("slng08")
~ THEN GOTO 92
END

IF ~~ THEN BEGIN 98 // from: 113.19 109.19 105.19 13.19
  SAY #88619 /* ~��� � ����! ��� �����!~ */
  IF ~  !PartyHasItem("blun30a")
~ THEN GOTO 99
  IF ~  PartyHasItem("blun30a")
~ THEN GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #88620 /* ~�������, ���-�� ����� ����� ��� ������ ��� ����� ����. �����, � � �� �������.~ */
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #88621 /* ~����, � ���� ��� � ��������� ������ ��� ��� ����. �� 5,000 � �� �������.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66768 /* ~� ���� ��� ����� �����.~ */ GOTO 101
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66769 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",12)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("blun14",1)
DestroyItem("blun14")
TakePartyItemNum("blun30a",1)
DestroyItem("blun30a")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66770 /* ~���. ��� ��� ���?~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.2 100.0 99.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
  IF ~  PartyHasItem("chan16")
~ THEN GOTO 88
  IF ~  PartyHasItem("slng08")
~ THEN GOTO 92
  IF ~  PartyHasItem("quiver01")
~ THEN GOTO 94
END

IF ~~ THEN BEGIN 102 // from: 113.20 109.20 13.20
  SAY #88622 /* ~����� �� ���?.. ��, ������������ �������, ��� �����.~ */
  IF ~  !PartyHasItem("ring02")
~ THEN GOTO 103
  IF ~  PartyHasItem("ring02")
~ THEN GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #88623 /* ~������� ������ ������ �� ����, ������� �� ��� ������ ������.~ */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 104 // from: 102.1
  SAY #88624 /* ~�� 5,000 ������� � ����� �������� � ��� ���� ������ ����. ����� ��� �����.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66752 /* ~��� �� ������� ������.~ */ GOTO 105
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66753 /* ~�������, ���������.~ */ DO ~SetGlobal("CDItems","ar0334",13)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("blun26",1)
DestroyItem("blun26")
TakePartyItemNum("ring02",1)
DestroyItem("ring02")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66770 /* ~���. ��� ��� ���?~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.2 104.0 103.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
  IF ~  PartyHasItem("chan16")
~ THEN GOTO 88
  IF ~  PartyHasItem("slng08")
~ THEN GOTO 92
  IF ~  PartyHasItem("quiver01")
~ THEN GOTO 94
  IF ~  PartyHasItem("blun14")
~ THEN GOTO 98
END

IF ~~ THEN BEGIN 106 // from: 113.21 13.21
  SAY #88625 /* ~������, ���-�� ����� �������� ���-�� �� ������� ������.~ */
  IF ~  OR(2)
!PartyHasItem("dagg23")
!PartyHasItem("sper11")
~ THEN GOTO 107
  IF ~  PartyHasItem("dagg23")
PartyHasItem("sper11")
~ THEN GOTO 108
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #88626 /* ~��� - ����� ����� ������. ������� ������ ��������, � ����� ���� �����.~ */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 108 // from: 106.1
  SAY #88627 /* ~����, � ���� ��� ����� ��� ������� �����. �� 5,000 gold �� ������ �� ���������.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66662 /* ~� ���� ��� ������� ������.~ */ GOTO 109
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66664 /* ~�������, ������.~ */ DO ~SetGlobal("CDItems","ar0334",14)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("dagg23",1)
DestroyItem("dagg23")
TakePartyItemNum("sper11",1)
DestroyItem("sper11")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66770 /* ~���. ��� ��� ���?~ */ GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.2 108.0 107.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
  IF ~  PartyHasItem("chan16")
~ THEN GOTO 88
  IF ~  PartyHasItem("slng08")
~ THEN GOTO 92
  IF ~  PartyHasItem("quiver01")
~ THEN GOTO 94
  IF ~  PartyHasItem("blun14")
~ THEN GOTO 98
  IF ~  PartyHasItem("blun26")
~ THEN GOTO 102
END

IF ~~ THEN BEGIN 110 // from: 13.22
  SAY #88628 /* ~�, ���� �������� ������.~ */
  IF ~  NumItemsPartyLT("misc41",5)
~ THEN GOTO 111
  IF ~  NumItemsPartyGT("misc41",4)
~ THEN GOTO 112
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #88629 /* ~���� ��������� ��� � ����� ���� �������� ��������, ����, ����������� �� ����, ��������.~ */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 112 // from: 110.1
  SAY #88630 /* ~���� �������� � 5,000 ������� - � ����, ����������� �� ����, ��������.~ */
  IF ~  PartyGoldLT(5000)
~ THEN REPLY #66648 /* ~� ���� ��� ������� ������.~ */ GOTO 113
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #66649 /* ~�������, ����� ���������, ��� ���������.~ */ DO ~SetGlobal("CDItems","ar0334",15)
SetGlobal("ForgeStuff","GLOBAL",1)
TakePartyGold(5000)
TakePartyItemNum("dagg21",1)
DestroyItem("dagg21")
TakePartyItemNum("misc41",5)
DestroyItem("misc41")
DestroyItem("misc41")
DestroyItem("misc41")
DestroyItem("misc41")
DestroyItem("misc41")
DestroyGold(5000)
~ GOTO 56
  IF ~~ THEN REPLY #66770 /* ~���. ��� ��� ���?~ */ GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.2 112.0 111.0
  SAY #88588 /* ~��, ����� ���������, ��� ��� � ���� ����.~ */
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
!PartyHasItem("misc5k")~ THEN GOTO 14
  IF ~OR(3)
PartyHasItem("scaleb")
PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 15
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
OR(2)
PartyHasItem("scrlag")
PartyHasItem("hamm07")~ THEN GOTO 20
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ THEN GOTO 28
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ THEN GOTO 34
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ THEN GOTO 39
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ THEN GOTO 44
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
!PartyHasItem("misc12")
!PartyHasItem("scrlag")
!PartyHasItem("hamm07")
!PartyHasItem("sw1h54a")
!PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54c")
!PartyHasItem("bow19a")
!PartyHasItem("bow19b")
!PartyHasItem("halb09a")
!PartyHasItem("halb09b")
!PartyHasItem("misc8u")
!PartyHasItem("sw2h15a")
PartyHasItem("misc5k")~ THEN GOTO 49
  IF ~  PartyHasItem("quiver02")
~ THEN GOTO 59
  IF ~  PartyHasItem("helm29")
~ THEN GOTO 62
  IF ~  OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")
~ THEN GOTO 66
  IF ~  PartyHasItem("brac24")
~ THEN GOTO 70
  IF ~  PartyHasItem("brac22")
~ THEN GOTO 74
  IF ~  PartyHasItem("tome01")
~ THEN GOTO 77
  IF ~  PartyHasItem("clck02")
~ THEN GOTO 81
  IF ~  PartyHasItem("compon18")
~ THEN GOTO 85
  IF ~  PartyHasItem("chan16")
~ THEN GOTO 88
  IF ~  PartyHasItem("slng08")
~ THEN GOTO 92
  IF ~  PartyHasItem("quiver01")
~ THEN GOTO 94
  IF ~  PartyHasItem("blun14")
~ THEN GOTO 98
  IF ~  PartyHasItem("blun26")
~ THEN GOTO 102
  IF ~  OR(2)
PartyHasItem("dagg23")
PartyHasItem("sper11")
~ THEN GOTO 106
END

IF ~~ THEN BEGIN 114 // from: 53.3 53.2 17.1 16.2 15.2
  SAY ~��. ����, � ���� ���� ����� ������ �������. ������ ������� � �������� ������ ������������ ������� �� ���� �������. ������ ��������?~
  IF ~~ THEN REPLY #59721 /* ~� ��� ��� ����� �����?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",10)~ GOTO 115
  IF ~~ THEN REPLY #59722 /* ~���� ��. � ���� ���� ��� ���-������ ����������?~ */ GOTO 19
END

IF ~~ THEN BEGIN 115 // from: 18.0 17.0 16.0
  SAY ~��� ����, <GIRLBOY>. ������ ����� ������ ���� 8000 �������, �� ������, � ��� ��� � ��� �����������, ���� �������� �������� �� ���� � ������ ��� � �����.~
  IF ~PartyGoldGT(7999)~ THEN REPLY #59775 /* ~�������. ��� � �������.~ */ DO ~TakePartyGold(8000)
DestroyGold(8000)~ GOTO 56
  IF ~Global("ForgeItem","GLOBAL",1)
PartyHasItem("scaler")~ THEN REPLY #59777 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 17
  IF ~Global("ForgeItem","GLOBAL",1)
!PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN REPLY #59779 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 18
  IF ~Global("ForgeItem","GLOBAL",2)
PartyHasItem("misc12")~ THEN REPLY #59780 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 18
  IF ~Global("ForgeItem","GLOBAL",3)~ THEN REPLY #59781 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~Global("ForgeItem","GLOBAL",1)
!PartyHasItem("scaler")
!PartyHasItem("misc12")~ THEN REPLY #59782 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~Global("ForgeItem","GLOBAL",2)
!PartyHasItem("misc12")~ THEN REPLY #59783 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~Global("ForgeItem","GLOBAL",10)
!PartyHasItem("misc12")~ THEN REPLY #59783 /* ~���, � ��� �� �����. � ���� ���� ���-������ ��� ���������?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~~ THEN REPLY #59778 /* ~���, ���� ��. �����, � ����� �����.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

// �����_1 �������� ������ ������ �������

BEGIN ~NWBOOK47~

IF ~  Global("KaohionQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�� �� ������ ��� � ��� ���� ����� ������������ ��� �����.~
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
AreaCheck("NW1040")
!See("KAOHINON")
!Range("KAOHINON",20)
~ THEN BEGIN 1 // from:
  SAY ~�� ������ ������� � ������ �������.~
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
!AreaCheck("NW1040")
~ THEN BEGIN 2 // from:
  SAY ~�� �� ������ ������������ ����� � ���� �����.~
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
AreaCheck("NW1040")
See("KAOHINON")
Range("KAOHINON",20)
~ THEN BEGIN 3 // from:
  SAY ~��� �� ������ ������������ ��� �����?~
  IF ~~ THEN REPLY ~��������� ������.~ DO ~SetGlobal("KaohionQuest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY ~������� ������.~ DO ~SetGlobal("KaohionQuest","GLOBAL",5)EraseJournalEntry(%������ � ��������

�� ����� ���, ������, ����� ������������ ������� ���� �������� ���. ��� �������� �� ������. ������, ������ �������� �������� ���, ����� ��������� ����-������, ������� ������ ����� ������. ����� ������ ���, �� ��� �� ����������. ������ �� �����, ����� ���-�� ����� ������ ������� � �������� ������, ����� ��������� ��� � ���. �� ������� ��������� �������, �� ��� ���� ������ ����� �������, �� ��� ��?%)PlaySound("EFF_M63")~ SOLVED_JOURNAL ~������ � ��������

�������� �� ������ ��� ������ ������� � ������ ��, ������� ��� �������. �� ��� ����� ����� ���-����� ����� ������. ����� �����, ��� ��� ���������, �� �� ��� ������ �������� �������������� ����. ������ �� ����� ������ � ������ � �������� � ��� �����������, ������� �������� ����� ������.~ EXIT
  IF ~~ THEN REPLY ~������� �����.~ EXIT
END

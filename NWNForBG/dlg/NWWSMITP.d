ADD_TRANS_TRIGGER WSMITH01 13 ~!PartyHasItem("NWSCALEL")~ DO 0

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("NWSCALEL")~ THEN GOTO scaleblue
END

APPEND WSMITH01
  IF ~~ THEN BEGIN scaleblue
    SAY @0 /* ~��. ����, � ���� ���� ����� ������ �������. ������ ������� � �������� ������ ������������ ������� �� ���� �������. ������ ��������?~ */
    IF ~~ THEN REPLY #59721 GOTO scaleblue2 /* ~� ��� ��� ����� �����?~ */
    IF ~~ THEN REPLY #59715 GOTO skip /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */
  END
  
  IF ~~ THEN BEGIN scaleblue2
    SAY @1 /* ~��� ����, <GIRLBOY>. ������ ����� ������ ���� 8000 �������, �� ������, � ��� ��� � ��� �����������, ���� �������� �������� �� ���� � ������ ��� � �����.~ */
    IF ~PartyGoldGT(7999)~ THEN REPLY #59775 DO ~TakePartyGold(8000) DestroyGold(8000) SetGlobal("NW#Items","ar0334",1)~ GOTO 56 /* ~�������. ��� � �������.~ */
    IF ~PartyGoldLT(8000)~ THEN REPLY #70892 GOTO skip /* ~� ���� ��� ������� ������.~ */
    IF ~~                  THEN REPLY #59715 GOTO skip /* ~���� ��. � ���� ���� ���-������ ��� ���������?~ */
  END  
  
  IF ~~ THEN BEGIN skip
    SAY #59723 /* ~������ ��� ��� �����. ��...~ */
    COPY_TRANS WSMITH01 13
  END
END

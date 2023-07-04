// �������� ������, ������� ������� ������, ������� 2 �������, ������� ������. ��� ������� ����������� �������, � ����� ����������� � ����� ��������, ������� ������� � �� �������.

BEGIN ~ZAMITRA2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)IsGabber(Player1)!Global("Attack","LOCALS",3)~ THEN BEGIN 0 // from:
  SAY ~������ �� ����, ��� ��� �� �������. ������ �������� ��� ������� � ����� ������ ���������� ��������!~ [ZAMIT065]
  IF ~~ THEN REPLY ~� �����, ���. � �����, ����� ������� � ���� ����������� ������. ��� ��� ����.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���! ��� ��� ������ ����, ����� � �������� ��� ������! �������� �� ����, ��� � �������� �� ������ �������!~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1
  SAY ~���� � ���������! ��� �� ������ �������� ��� ����!~ [ZAMIT062]
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",1)Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",2)~ THEN BEGIN 3 // from:
  SAY ~��������! � ������!~ [ZAMIT067]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~��� ������ ���������� ���, �� � ���������.~ [ZAMIT068]
  IF ~  RandomNum(2,1)~ THEN REPLY ~��� ����� ���������� ����������� ������, ������� ������ � ���.~ GOTO 5
  IF ~  RandomNum(2,2)~ THEN REPLY ~��� ����� ���������� ����������� ������, ������� ������ � ���.~ GOTO 6
  IF ~~ THEN REPLY ~���� ��������� ���� �� ����������. ��� ����� ���� �����!~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~����������� ������? � ���� ��� ������� ������! � ��� �� ��������?~
  IF ~~ THEN REPLY ~� ����, ��� � ��� ���� ����������� ������. � ���� ��� ������ �������� ��������.~ GOTO 8
  IF ~~ THEN REPLY ~�� ������ ����. � ����� ��, ��� ���, � ����� �������.~ GOTO 9
  IF ~~ THEN REPLY ~����� ������ ��� ��� ��������� ��������, � ��� ����� � ���� ������� �������?~ GOTO 10
  IF ~~ THEN REPLY ~������! ����!~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~�� ��������� �������������!? �����! � ��������� � �������� �����-�� ������ ��������� �����������! ��� � ������ �������� � ����� ���� ��������? ����� ������� �����! ��������� ������! �� � ���� �������!~
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",3)SetGlobal("ZamitraGem","MYAREA",1)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~� ���� � ����� � ����!~
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",4)Enemy()Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~��� �������� ����! � ������� �������, � � ���� ��� ������� ��������, �� ������ �� � ����������� ������.~
  IF ~~ THEN REPLY ~������ �����. ������ ������� ���, ��� ����������� ������.~ GOTO 10
  IF ~~ THEN REPLY ~��� ������������ ����� �� ��� ���� ����������. ��� �������� ����� ���!~ GOTO 11
  IF ~~ THEN REPLY ~����� ������ ��� ��� ��������� ��������, � ��� ����� � ���� ������� �������?~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY ~�� ��������� �������������!? �����! � ��������� � �������� �����-�� ������ ��������� �����������! ��� � ������ �������� � ����� ���� ��������? ����� ������� �����!~
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY ~�������! ��������� ������! �� � ���� �������! �����! � ��������� � �������� �����-�� ������ ��������� �����������! ��� � ������ �������� � ����� ���� ��������? ����� ������� �����!~
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~�� �������� ����!! ������ �������� ����������� ������! �� ��� � ��� �������! ����������, ��������� ����! ��� ����� ����� ���������  �������� ��� ��������� � ������ ���� �������! �� ���� ���������!~
  IF ~~ THEN REPLY ~�� ������ ����.~ DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
  IF ~~ THEN REPLY ~������! ����!~ GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",3)~ THEN BEGIN 12 // from:
  SAY ~� ������� � ��������� � ���� �����.~ [ZAMIT052]
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",4)EscapeArea()~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 13 // from:
  SAY ~� �� � ���������� ������ �������������. �����, �����.~ [ZAMIT050]
  IF ~~ THEN EXIT
END

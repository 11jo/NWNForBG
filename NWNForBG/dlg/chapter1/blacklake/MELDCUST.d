// ���������� �������� ��������� ������� ��������   ���� ������� �������� ���, ��� ����� ��������� �� �����������, ���� ������ ���-�� ��� ����������. �� ���� ������ � �������� ������ ������������ � �� � ���� �����.

// DisplayStringHead(Myself,000000) �������� ���! ��������� ���� ������!

BEGIN ~MELDCUST~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~�������� - ��� ��? ���! �� ����� ��� ������!~
  IF ~~ THEN DO ~SetGlobal("AreaHostile","MYAREA",1)Enemy()~ EXIT
END


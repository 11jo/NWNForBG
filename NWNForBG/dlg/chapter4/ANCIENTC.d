// ������������ ������ ������ �����-��������� �����, ��������� ������ ������� ���� ������ ������� ��������� ������� ���� ����� ������� ��� ����.

// ���, � �� ���� �������! � �����, �������� �����������! � ����������! ���! ��-�-��!!! [MORAG67]

// ��� ����� �� ����� ��������� ��� �����! ���� ����� ����������, ���! [MORAG69]

BEGIN ~ANCIENTC~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����, ���! ��� ������ �� ���������� �� ���������� ��������� �����!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��������� �� ������! **�����** ������ ������������!~ [LIZARD51]
  IF ~~ THEN EXTERN ~MORAG3~ 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~������ ����������! **�����** ������ ����� ����!~ [LIZARD52]
  IF ~~ THEN EXTERN ~MORAG3~ 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~�� ����������� �����! **�����** ���� ��� � �����!~ [LIZARD53]
  IF ~~ THEN EXTERN ~MORAG3~ 4
END




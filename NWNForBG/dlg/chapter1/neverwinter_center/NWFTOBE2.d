// creator  : Z:\home\paladin\Games\bgnwn\WeiDU.exe (version 24600)
// argument : NWFTOBE2.DLG
// game     : .
// source   : ./DATA/TB#GEN8.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWFTOBE2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~�-�-�! �� ������ ����� �� ���������� � ���� ����?!~ #79575 */
  IF ~~ THEN REPLY @2 /* ~��������� �� ���������, �� ��� ������ ���� ���������, ��� �� ������.~ #79576 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~�������� �������, � �� ��������� ��������� ���� ����.~ #79577 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~�� ����� ����, ��� �������! � �����, ���� ����� ���������������, ���� � ���� �������� ���� ��������.~ #79578 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~������� ���� ���������! ������, � �� �� ������. � ��� �����.~ #79579 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~��� � ���������, �� ���� ����! ����� ����������, ����� � ������ ������!~ #79580 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~����� ������ � ����� ���� � ��� �����! ���� � ��� ��� ����� �� ���������, ��� ��� �����!~ #79581 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~� ������ �� ���� �������, ����� ���������� ����, �� � ���� ������� ���, ��� ������ � ����� ����������. ����� ������ ��, ����� ����� �������� ������.~ #79582 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @9 /* ~��� � ������! ���� �� ��� ��� ������ ���� �����, �� �� ���� ����� ���������!~ #79583 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @10 /* ~� ������� ��������� ������� � �����, ��� ��� ������ �������� ������������ ��� ������ �������� �������� �����������.~ #79584 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  True()
~ THEN BEGIN 6 // from:
  SAY @11 /* ~� ��� ��������. ������ ���� ����� ������! � ������, ��������!~ #13637 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @12 /* ~���� ����� ������ �� ����!~ #13657 */
  IF ~~ THEN EXIT
END

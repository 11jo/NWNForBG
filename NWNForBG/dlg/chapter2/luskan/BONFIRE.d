// ������ ������ ����� ������ �� ����.

BEGIN ~BONFIRE~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~��� ����� ����� �� ���������� ���������� �����. ~
  IF ~  Dead("Burnernw")~ THEN REPLY ~�������� �����.~ GOTO 1
  IF ~  !Dead("Burnernw")~ THEN REPLY ~�������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~����� �����.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ����� ������ ����� ������. �� ������ ���������� ������ ������� ����.~
  IF ~~ THEN DO ~SetGlobal("BonfireDisable","MYAREA",2)AmbientActivate("Fpit1S",FALSE)OpenDoor("Bonfire")SoundActivate("Fire1",FALSE)ContainerEnable("Pile",TRUE)TriggerActivation("Book",FALSE)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������ ������������ ����� � �� ���� ������ ���������~
  IF ~~ THEN EXIT
END


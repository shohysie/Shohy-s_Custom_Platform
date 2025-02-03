BEGIN ~SH#CPF0Z~

IF ~True()~ THEN BEGIN 0
	SAY @11	//全局设定
	IF ~~ THEN REPLY @10 GOTO detail1	//平台功能说明
	IF ~~ THEN REPLY @12 DO ~DestroySelf()~ EXIT	//退出
	IF ~~ THEN REPLY @13 DO ~SetGlobal("SH#CPF00","GLOBAL",2) DestroySelf()~ EXIT	//关闭所有全局设定
END

IF ~~ THEN BEGIN detail1
	SAY @18
	IF ~~ THEN GOTO detail2
END	

IF ~~ THEN BEGIN detail2
	SAY @19
	IF ~~ THEN GOTO 0
END

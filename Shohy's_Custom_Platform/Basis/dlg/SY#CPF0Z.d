BEGIN ~SY#CPF0Z~

IF ~True()~ THEN BEGIN 0
	SAY @11	//全局设定
	IF ~~ THEN REPLY @10 GOTO detail1	//平台功能说明
	IF ~~ THEN REPLY @12 DO ~DestroySelf()~ EXIT	//退出
	IF ~GlobalGT("SY#CPF00","GLOBAL",0)~ THEN REPLY @13 DO ~SetGlobal("SY#CPF00","GLOBAL",0) DestroySelf()~ EXIT	//关闭全局调整平台
	IF ~!GlobalGT("SY#CPF00","GLOBAL",0)~ THEN REPLY @16 DO ~SetGlobal("SY#CPF00","GLOBAL",1) DestroySelf()~ EXIT	//开启全局调整平台
END

IF ~~ THEN BEGIN detail1
	SAY @18
	IF ~~ THEN GOTO detail2
END	

IF ~~ THEN BEGIN detail2
	SAY @19
	IF ~~ THEN GOTO 0
END

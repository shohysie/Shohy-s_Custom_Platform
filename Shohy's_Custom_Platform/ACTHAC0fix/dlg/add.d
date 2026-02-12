EXTEND_BOTTOM ~SY#CPF0Z~ 0
	IF ~~ THEN REPLY @310 GOTO acthac0fix	//设置所有生物的AC和命中上调
END

APPEND ~SY#CPF0Z~
	IF ~~ THEN BEGIN acthac0fix
		SAY @310	//设置所有生物的AC和命中上调
		IF ~~ THEN REPLY @311 DO ~SetGlobal("SY#ACTHA","GLOBAL",0)~ GOTO 0	//关闭调整
		IF ~~ THEN REPLY @313 DO ~SetGlobal("SY#ACTHA","GLOBAL",1)~ GOTO 0	//所有生物的AC和命中上调20点
		IF ~!GlobalGT("SY#ACTHA","GLOBAL",0)~ THEN REPLY @314 GOTO 0 //保留当前设置（关闭调整）并返回上一层选项
		IF ~GlobalGT("SY#ACTHA","GLOBAL",0)~ THEN REPLY @316 GOTO 0 //保留当前设置（所有生物的AC和命中上调20点）并返回上一层选项
		IF ~~ THEN REPLY @317 GOTO detail1	//阅读所有生物的AC和命中上调的详细说明
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @318	//越低的AC越不容易被打中，而越低的命中越容易打中对手。游戏中AC修正有-20的下限，而命中修正没有下限。这会导致即使尽全力堆低AC，在太低的命中面前也会失去意义。
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @319	//如果将所有生物的AC和命中同时向上提升，就意味着AC获得了更多的向下修正空间。这对正常的游戏意义不大，但很适合从各种MOD获得了更多堆AC手段的游戏版本。
		IF ~~ THEN GOTO acthac0fix
	END
	
END

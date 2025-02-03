EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @211 GOTO lobfix//设置巴尔遗产模式豁免BUG修正（默认开启，如未进入遗产难度则无作用）
END



APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN lobfix
		SAY @212	//设置巴尔遗产模式豁免BUG修正
		IF ~~ THEN REPLY @213 DO ~SetGlobal("LOB#fixoff","GLOBAL",0)~ GOTO 0	//开启修正
		IF ~~ THEN REPLY @214 DO ~SetGlobal("LOB#fixoff","GLOBAL",1)~ GOTO 0	//关闭修正
		IF ~~ THEN REPLY @14 GOTO 0	//不做改变，返回上一层选项
		IF ~~ THEN REPLY @15 GOTO detail1	//阅读详细说明
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @251
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @252
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @253
		IF ~~ THEN GOTO lobfix
	END

END

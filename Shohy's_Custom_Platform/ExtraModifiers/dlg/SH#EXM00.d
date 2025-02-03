EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @31 GOTO extramodify	//设置智力、感知、魅力的额外修正（此修正默认开启）
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN extramodify
		SAY @32	//设置智力、感知、魅力的额外修正
		IF ~~ THEN REPLY @33 DO ~SetGlobal("SH#EXM0","GLOBAL",0)~ GOTO 0	//以魅力修正术士和吟游诗人的施法等级
		IF ~~ THEN REPLY @34 DO ~SetGlobal("SH#EXM0","GLOBAL",1)~ GOTO 0	//以智力修正术士和吟游诗人的施法等级
		IF ~~ THEN REPLY @35 DO ~SetGlobal("SH#EXM0","GLOBAL",2)~ GOTO 0	//关闭额外属性修正
		IF ~~ THEN REPLY @14 GOTO 0	//不做改变，返回上一层选项
		IF ~~ THEN REPLY @15 GOTO detail1	//阅读详细说明
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @26
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @27
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @28
		IF ~~ THEN GOTO detail4
	END	
	
	IF ~~ THEN BEGIN detail4
		SAY @29
		IF ~~ THEN GOTO extramodify
	END
	
END

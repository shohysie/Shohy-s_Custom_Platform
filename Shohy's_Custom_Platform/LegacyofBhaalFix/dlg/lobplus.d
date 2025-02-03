EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @215 GOTO lobplus//设置巴尔遗产模式下敌人数据提升进程（默认关闭，如未进入遗产难度则无作用）
END



APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN lobplus
		SAY @216	//设置巴尔遗产模式下敌人数据提升进程
		IF ~~ THEN REPLY @217 DO ~SetGlobal("LOB#fixplus","GLOBAL",0)~ GOTO 0	//敌人数据正常受到遗产难度加成
		IF ~~ THEN REPLY @218 DO ~SetGlobal("LOB#fixplus","GLOBAL",1)~ GOTO 0	//敌人等级越低受到的加成越弱，只有25级（非遗产难度13级）以上的生物才会获得完整的遗产难度加成
		IF ~~ THEN REPLY @14 GOTO 0	//不做改变，返回上一层选项
		IF ~~ THEN REPLY @15 GOTO detail1	//阅读详细说明
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @256
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @257
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @258
		IF ~~ THEN GOTO detail4
	END
	
	IF ~~ THEN BEGIN detail4
		SAY @259
		IF ~~ THEN GOTO lobplus
	END

END

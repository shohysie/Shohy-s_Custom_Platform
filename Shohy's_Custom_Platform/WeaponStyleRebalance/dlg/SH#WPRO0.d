EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @141 GOTO wpstrebalance	//设置武器流派平衡（默认开启）
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN wpstrebalance
		SAY @142	//设置武器流派平衡
		IF ~~ THEN REPLY @143 DO ~SetGlobal("PROFBACK","LOCALS",1) SetGlobal("EXISTING","LOCALS",1) SetGlobal("SH#WPROP","GLOBAL",1)~ GOTO 0	//关闭所有效果并退回扣掉的星
		IF ~~ THEN REPLY @144 DO ~SetGlobal("SH#WPROP","GLOBAL",1)~ GOTO 0	//关闭所有效果但不返还扣除的星数
		IF ~~ THEN REPLY @146 DO ~SetGlobal("SH#WPROP","GLOBAL",0)~ GOTO 0	//开启所有效果，敌我均有效
		IF ~~ THEN REPLY @147 DO ~SetGlobal("SH#WPROP","GLOBAL",2)~ GOTO 0	//开启所有效果，仅我方队员有效
		IF ~~ THEN REPLY @148 DO ~SetGlobal("SH#WPROP","GLOBAL",3)~ GOTO 0	//关闭武器特效，保留武器流派修正，敌我均有效
		IF ~~ THEN REPLY @149 DO ~SetGlobal("SH#WPROP","GLOBAL",4)~ GOTO 0	//关闭武器特效，保留武器流派修正，仅我方队员有效
		IF ~~ THEN REPLY @14 GOTO 0	//不做改变，返回上一层选项
		IF ~~ THEN REPLY @151 GOTO detaila1	//阅读武器流派平衡的详细说明
		IF ~~ THEN REPLY @152 GOTO detailb1	//阅读武器流派平衡的详细说明
		IF ~~ THEN REPLY @153 GOTO detailc1	//阅读武器流派可投入更多星数的详细说明
	END
	
	IF ~~ THEN BEGIN detaila1
		SAY @161
		IF ~~ THEN GOTO detaila2
	END
	
	IF ~~ THEN BEGIN detaila2
		SAY @162
		IF ~~ THEN GOTO detaila3
	END
	
	IF ~~ THEN BEGIN detaila3
		SAY @163
		IF ~~ THEN GOTO detaila4
	END
	
	IF ~~ THEN BEGIN detaila4
		SAY @164
		IF ~~ THEN GOTO detaila5
	END
	
	IF ~~ THEN BEGIN detaila5
		SAY @165
		IF ~~ THEN GOTO wpstrebalance
	END
	
	IF ~~ THEN BEGIN detailb1
		SAY @171
		IF ~~ THEN GOTO detailb2
	END
	
	IF ~~ THEN BEGIN detailb2
		SAY @172
		IF ~~ THEN GOTO detailb3
	END
	
	IF ~~ THEN BEGIN detailb3
		SAY @173
		IF ~~ THEN GOTO detailb4
	END
	
	IF ~~ THEN BEGIN detailb4
		SAY @174
		IF ~~ THEN GOTO wpstrebalance
	END
	
	IF ~~ THEN BEGIN detailc1
		SAY @181
		IF ~~ THEN GOTO detailb2
	END
	
	IF ~~ THEN BEGIN detailc2
		SAY @182
		IF ~~ THEN GOTO detailb3
	END
	
	IF ~~ THEN BEGIN detailc3
		SAY @183
		IF ~~ THEN GOTO wpstrebalance
	END
	
END

EXTEND_BOTTOM ~SY#CPF0Z~ 0
	IF ~~ THEN REPLY @134 DO ~~ GOTO decreaseslots	//设置是否通过扣星的方式达到更高的武器流派熟练等级
END

APPEND ~SY#CPF0Z~
	IF ~~ THEN BEGIN decreaseslots
		SAY @134	//设置是否通过扣星的方式达到更高的武器流派熟练等级
		IF ~~ THEN REPLY @135 DO ~SetGlobal("SY#WPDCRSLT","GLOBAL",1)~ GOTO 0	//熟练度达到2星和3星时会自动减一星换来额外奖励
		IF ~~ THEN REPLY @136 DO ~SetGlobal("SY#WPDCRSLT","GLOBAL",0) SetGlobal("PROFBACK","LOCALS",1) SetGlobal("EXISTING","LOCALS",1)~ GOTO 0	//关闭自动扣星并返还已经扣除的星数（如果有的话）
		IF ~~ THEN REPLY @137 DO ~SetGlobal("SY#WPDCRSLT","GLOBAL",0)~ GOTO 0	//关闭自动扣星但不返还已经扣除的星数
		IF ~Global("SY#WPDCRSLT","GLOBAL",1)~ THEN REPLY @138 GOTO 0	//保留当前设置（自动扣星换取额外奖励）并返回上一层选项
		IF ~!GlobalGT("SY#WPDCRSLT","GLOBAL",0)~ THEN REPLY @139 GOTO 0	//保留当前设置（不自动扣星）并返回上一层选项
		IF ~~ THEN REPLY @153 GOTO detailc1	//阅读武器流派可投入更多星数的详细说明
	END
	
	IF ~~ THEN BEGIN detailc1
		SAY @181
		IF ~~ THEN GOTO detailc2
	END
	
	IF ~~ THEN BEGIN detailc2
		SAY @184
		IF ~~ THEN GOTO detailc3
	END
	
	IF ~~ THEN BEGIN detailc3
		SAY @183
		IF ~~ THEN GOTO decreaseslots
	END
	
END

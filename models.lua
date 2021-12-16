local s = {l = -0.5, m = 0, h = 0.5, s = 0.01} -- размеры
local e = {} -- элементы
--			x_min		y_min		z_min		x_max		y_max		z2_max
--		{	s.l+000*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.h-000*s.s,	s.h-000*s.s,	},	--e.[0]
e.a =	{ -- 1 x 1 x 0.03
		{	s.l+000*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.l+003*s.s,	s.h-000*s.s,	},	--e.a[01] нижняя плита
	}
e.b =	{ -- 1 x 0.5 x 0.03
		{	s.l+000*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.l+003*s.s,	s.m+000*s.s,	},	--e.b[01] нижняя ступенька
		{	s.l+000*s.s,	s.m+000*s.s,	s.m+000*s.s,	s.h-000*s.s,	s.m+003*s.s,	s.h-000*s.s,	},	--e.b[02] верхняя ступенька
	}
e.c =	{ -- 0.44 x 0.44 x 0.03
		{	s.l+006*s.s,	s.l+000*s.s,	s.l+006*s.s,	s.h-006*s.s,	s.l+003*s.s,	s.h-006*s.s,	},	--e.c[01] крышка люка (закрытая)
		{	s.l+006*s.s,	s.l+006*s.s,	s.h-006*s.s,	s.h-006*s.s,	s.h-006*s.s,	s.h-003*s.s,	},	--e.c[02] крышка люка (открытая)
	}
e.d =	{ -- 1 x 0.06 x 0.03
		{	s.l+000*s.s,	s.l+000*s.s,	s.h-006*s.s,	s.h-000*s.s,	s.l+003*s.s,	s.h-000*s.s,	},	--e.d[01] борт люка дальний
		{	s.h-006*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.l+003*s.s,	s.h-000*s.s,	},	--e.d[02] борт люка правый
		{	s.l+000*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.l+003*s.s,	s.l+006*s.s,	},	--e.d[03] борт люка ближний
		{	s.l+000*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.l+006*s.s,	s.l+003*s.s,	s.h-000*s.s,	},	--e.d[04] борт люка левый
		{	s.l+000*s.s,	s.h-003*s.s,	s.h-006*s.s,	s.h-000*s.s,	s.h-000*s.s,	s.h-000*s.s,	},	--e.d[05] поручень дальний
		{	s.h-006*s.s,	s.h-003*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.h-000*s.s,	s.h-000*s.s,	},	--e.d[06] поручень правый
		{	s.l+000*s.s,	s.h-003*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.h-000*s.s,	s.l+006*s.s,	},	--e.d[07] поручень ближний
		{	s.l+000*s.s,	s.h-003*s.s,	s.l+000*s.s,	s.l+006*s.s,	s.h-000*s.s,	s.h-000*s.s,	},	--e.d[08] поручень левый
		{	s.l+000*s.s,	s.l+000*s.s,	s.h-006*s.s,	s.l+003*s.s,	s.h-000*s.s,	s.h-000*s.s	},	--e.d[09] левая дальняя стойка (для вертикальных лестниц)
		{	s.h-003*s.s,	s.l+000*s.s,	s.h-006*s.s,	s.h+000*s.s,	s.h-000*s.s,	s.h-000*s.s	},	--e.d[10] правая дальняя стойка (для вертикальных лестниц)
		{	s.l+000*s.s,	s.l+000*s.s,	s.m+000*s.s,	s.l+003*s.s,	s.h-000*s.s,	s.m-006*s.s	},	--e.d[11] левая ближняя стойка (для вертикальных лестниц)
		{	s.h-003*s.s,	s.l+000*s.s,	s.m+000*s.s,	s.h+000*s.s,	s.h-000*s.s,	s.m-006*s.s	},	--e.d[12] правая ближняя стойка (для вертикальных лестниц)
		{	s.m-003*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.m+003*s.s,	s.h-000*s.s,	s.l+003*s.s	},	--e.d[13] центральная ближняя стойка (для вертикальных лестниц)
		{	s.l+003*s.s,	s.l+022*s.s,	s.l+003*s.s,	s.l+006*s.s,	s.l+028*s.s,	s.h-000*s.s	},	--e.d[14] (для вертикальных лестниц)
		{	s.l+003*s.s,	s.h-028*s.s,	s.l+003*s.s,	s.l+006*s.s,	s.h-022*s.s,	s.h-000*s.s	},	--e.d[15] (для вертикальных лестниц)
		{	s.h-006*s.s,	s.l+022*s.s,	s.l+003*s.s,	s.h-003*s.s,	s.l+028*s.s,	s.h-000*s.s	},	--e.d[16] (для вертикальных лестниц)
		{	s.h-006*s.s,	s.h-028*s.s,	s.l+003*s.s,	s.h-003*s.s,	s.h-022*s.s,	s.h-000*s.s	},	--e.d[17] (для вертикальных лестниц)
		{	s.l+003*s.s,	s.l+022*s.s,	s.l+003*s.s,	s.h-003*s.s,	s.l+028*s.s,	s.l+006*s.s	},	--e.d[18] (для вертикальных лестниц)
		{	s.l+003*s.s,	s.h-028*s.s,	s.l+003*s.s,	s.h-003*s.s,	s.h-022*s.s,	s.l+006*s.s	},	--e.d[19] (для вертикальных лестниц)
	}
e.e =	{ -- 1 x 0.04 x 0.04
		{	s.l+001*s.s,	s.l+000*s.s,	s.h-005*s.s,	s.l+005*s.s,	s.h-000*s.s,	s.h-001*s.s,	},	--e.e[01] стойка угловая левая дальняя
		{	s.h-005*s.s,	s.l+000*s.s,	s.h-005*s.s,	s.h-001*s.s,	s.h-000*s.s,	s.h-001*s.s,	},	--e.e[02] стойка угловая правая дальняя
		{	s.h-005*s.s,	s.l+000*s.s,	s.l+001*s.s,	s.h-001*s.s,	s.h-000*s.s,	s.l+005*s.s,	},	--e.e[03] стойка угловая правая ближняя
		{	s.l+001*s.s,	s.l+000*s.s,	s.l+001*s.s,	s.l+005*s.s,	s.h-000*s.s,	s.l+005*s.s,	},	--e.e[04] стойка угловая левая ближняя
		{	s.l+023*s.s,	s.l+000*s.s,	s.h-005*s.s,	s.l+027*s.s,	s.h-000*s.s,	s.h-001*s.s,	},	--e.e[05] стойка дальняя левая
		{	s.h-027*s.s,	s.l+000*s.s,	s.h-005*s.s,	s.h-023*s.s,	s.h-000*s.s,	s.h-001*s.s,	},	--e.e[06] стойка дальняя правая
		{	s.h-005*s.s,	s.l+000*s.s,	s.l+023*s.s,	s.h-001*s.s,	s.h-000*s.s,	s.l+027*s.s,	},	--e.e[07] стойка правая дальняя
		{	s.h-005*s.s,	s.l+000*s.s,	s.h-027*s.s,	s.h-001*s.s,	s.h-000*s.s,	s.h-023*s.s,	},	--e.e[08] стойка правая ближняя
		{	s.h-027*s.s,	s.l+000*s.s,	s.l+001*s.s,	s.h-023*s.s,	s.h-000*s.s,	s.l+005*s.s,	},	--e.e[09] стойка ближняя правая
		{	s.l+023*s.s,	s.l+000*s.s,	s.l+001*s.s,	s.l+027*s.s,	s.h-000*s.s,	s.l+005*s.s,	},	--e.e[10] стойка ближняя левая
		{	s.l+001*s.s,	s.l+000*s.s,	s.l+023*s.s,	s.l+005*s.s,	s.h-000*s.s,	s.l+027*s.s,	},	--e.e[11] стойка левая ближняя
		{	s.l+001*s.s,	s.l+000*s.s,	s.h-027*s.s,	s.l+005*s.s,	s.h-000*s.s,	s.h-023*s.s,	},	--e.e[12] стойка левая дальняя
		{	s.l+000*s.s,	s.l+023*s.s,	s.h-005*s.s,	s.h-000*s.s,	s.l+027*s.s,	s.h-001*s.s	},	--e.e[13] перекладина нижняя (для вертикальных лестниц)
		{	s.l+000*s.s,	s.h-027*s.s,	s.h-005*s.s,	s.h-000*s.s,	s.h-023*s.s,	s.h-001*s.s	},	--e.e[14] перекладина верхняя (для вертикальных лестниц)
	}
e.f =	{ -- 0.06 x 0.06 x 0.03
		{	s.l+000*s.s,	s.h-003*s.s,	s.h-006*s.s,	s.l+006*s.s,	s.h-000*s.s,	s.h-000*s.s,	},	--e.f[01] уголок поручней левый дальний
		{	s.h-006*s.s,	s.h-003*s.s,	s.h-006*s.s,	s.h-000*s.s,	s.h-000*s.s,	s.h-000*s.s,	},	--e.f[02] уголок поручней правый дальний
		{	s.h-006*s.s,	s.h-003*s.s,	s.l+000*s.s,	s.h-000*s.s,	s.h-000*s.s,	s.l+006*s.s,	},	--e.f[03] уголок поручней правый ближний
		{	s.l+000*s.s,	s.h-003*s.s,	s.l+000*s.s,	s.l+006*s.s,	s.h-000*s.s,	s.l+006*s.s,	},	--e.f[04] уголок поручней левый ближний
	}
e.g =	{ -- 0.06 x 0.03 x 0.03
		{	s.l+024*s.s,	s.l+003*s.s,	s.h-006*s.s,	s.l+030*s.s,	s.l+006*s.s,	s.h-003*s.s,	},	--e.g[01] петля люка левая
		{	s.h-030*s.s,	s.l+003*s.s,	s.h-006*s.s,	s.h-024*s.s,	s.l+006*s.s,	s.h-003*s.s,	},	--e.g[02] петля люка правая
	}
e.h =	{ -- 1.24 x 0.04 x 0.04
		{	s.l+001*s.s,	s.l+000*s.s,	s.l+023*s.s,	s.l+005*s.s,	s.h+024*s.s,	s.l+027*s.s	},	--e.h[1] стойка левая ближняя (для ступеньки)
		{	s.l+001*s.s,	s.m+000*s.s,	s.h-027*s.s,	s.l+005*s.s,	s.h+075*s.s,	s.h-023*s.s	},	--e.h[2] стойка левая дальняя (для ступеньки)
		{	s.h-001*s.s,	s.l+000*s.s,	s.l+023*s.s,	s.h-005*s.s,	s.h+024*s.s,	s.l+027*s.s	},	--e.h[3] стойка правая ближняя (для ступеньки)
		{	s.h-001*s.s,	s.m+000*s.s,	s.h-027*s.s,	s.h-005*s.s,	s.h+075*s.s,	s.h-023*s.s	},	--e.h[4] стойка правая дальняя (для ступеньки)
	}
e.i =	{
		{	s.l+000*s.s,	s.h+000*s.s,	s.l+000*s.s,	s.l+006*s.s,	s.h+003*s.s,	s.l+003*s.s	},	--e.i[01] левый поручень...
		{	s.l+000*s.s,	s.h+003*s.s,	s.l+003*s.s,	s.l+006*s.s,	s.h+006*s.s,	s.l+006*s.s	},
		{	s.l+000*s.s,	s.h+006*s.s,	s.l+006*s.s,	s.l+006*s.s,	s.h+009*s.s,	s.l+009*s.s	},
		{	s.l+000*s.s,	s.h+009*s.s,	s.l+009*s.s,	s.l+006*s.s,	s.h+012*s.s,	s.l+012*s.s	},
		{	s.l+000*s.s,	s.h+012*s.s,	s.l+012*s.s,	s.l+006*s.s,	s.h+015*s.s,	s.l+015*s.s	},
		{	s.l+000*s.s,	s.h+015*s.s,	s.l+015*s.s,	s.l+006*s.s,	s.h+018*s.s,	s.l+018*s.s	},
		{	s.l+000*s.s,	s.h+018*s.s,	s.l+018*s.s,	s.l+006*s.s,	s.h+021*s.s,	s.l+021*s.s	},
		{	s.l+000*s.s,	s.h+021*s.s,	s.l+021*s.s,	s.l+006*s.s,	s.h+024*s.s,	s.l+024*s.s	},
		{	s.l+000*s.s,	s.h+024*s.s,	s.l+024*s.s,	s.l+006*s.s,	s.h+027*s.s,	s.l+027*s.s	},
		{	s.l+000*s.s,	s.h+027*s.s,	s.l+027*s.s,	s.l+006*s.s,	s.h+030*s.s,	s.l+030*s.s	},
		{	s.l+000*s.s,	s.h+030*s.s,	s.l+030*s.s,	s.l+006*s.s,	s.h+033*s.s,	s.l+033*s.s	},
		{	s.l+000*s.s,	s.h+033*s.s,	s.l+033*s.s,	s.l+006*s.s,	s.h+036*s.s,	s.l+036*s.s	},
		{	s.l+000*s.s,	s.h+036*s.s,	s.l+036*s.s,	s.l+006*s.s,	s.h+039*s.s,	s.l+039*s.s	},
		{	s.l+000*s.s,	s.h+039*s.s,	s.l+039*s.s,	s.l+006*s.s,	s.h+042*s.s,	s.l+042*s.s	},
		{	s.l+000*s.s,	s.h+042*s.s,	s.l+042*s.s,	s.l+006*s.s,	s.h+045*s.s,	s.l+045*s.s	},
		{	s.l+000*s.s,	s.h+045*s.s,	s.l+045*s.s,	s.l+006*s.s,	s.h+048*s.s,	s.l+048*s.s	},
		{	s.l+000*s.s,	s.h+048*s.s,	s.l+048*s.s,	s.l+006*s.s,	s.h+051*s.s,	s.l+051*s.s	},
		{	s.l+000*s.s,	s.h+051*s.s,	s.l+051*s.s,	s.l+006*s.s,	s.h+054*s.s,	s.l+054*s.s	},
		{	s.l+000*s.s,	s.h+054*s.s,	s.l+054*s.s,	s.l+006*s.s,	s.h+057*s.s,	s.l+057*s.s	},
		{	s.l+000*s.s,	s.h+057*s.s,	s.l+057*s.s,	s.l+006*s.s,	s.h+060*s.s,	s.l+060*s.s	},
		{	s.l+000*s.s,	s.h+060*s.s,	s.l+060*s.s,	s.l+006*s.s,	s.h+063*s.s,	s.l+063*s.s	},
		{	s.l+000*s.s,	s.h+063*s.s,	s.l+063*s.s,	s.l+006*s.s,	s.h+066*s.s,	s.l+066*s.s	},
		{	s.l+000*s.s,	s.h+066*s.s,	s.l+066*s.s,	s.l+006*s.s,	s.h+069*s.s,	s.l+069*s.s	},
		{	s.l+000*s.s,	s.h+069*s.s,	s.l+069*s.s,	s.l+006*s.s,	s.h+072*s.s,	s.l+072*s.s	},
		{	s.l+000*s.s,	s.h+072*s.s,	s.l+072*s.s,	s.l+006*s.s,	s.h+075*s.s,	s.l+075*s.s	},
		{	s.l+000*s.s,	s.h+075*s.s,	s.l+075*s.s,	s.l+006*s.s,	s.h+078*s.s,	s.l+078*s.s	},
		{	s.l+000*s.s,	s.h+078*s.s,	s.l+078*s.s,	s.l+006*s.s,	s.h+081*s.s,	s.l+081*s.s	},
		{	s.l+000*s.s,	s.h+081*s.s,	s.l+081*s.s,	s.l+006*s.s,	s.h+084*s.s,	s.l+084*s.s	},
		{	s.l+000*s.s,	s.h+084*s.s,	s.l+084*s.s,	s.l+006*s.s,	s.h+087*s.s,	s.l+087*s.s	},
		{	s.l+000*s.s,	s.h+087*s.s,	s.l+087*s.s,	s.l+006*s.s,	s.h+090*s.s,	s.l+090*s.s	},
		{	s.l+000*s.s,	s.h+090*s.s,	s.l+090*s.s,	s.l+006*s.s,	s.h+093*s.s,	s.l+093*s.s	},
		{	s.l+000*s.s,	s.h+093*s.s,	s.l+093*s.s,	s.l+006*s.s,	s.h+096*s.s,	s.l+096*s.s	},
		{	s.l+000*s.s,	s.h+096*s.s,	s.l+096*s.s,	s.l+006*s.s,	s.h+100*s.s,	s.l+100*s.s	},	--e.i[33]
		{	s.h-000*s.s,	s.h+000*s.s,	s.l+000*s.s,	s.h-006*s.s,	s.h+003*s.s,	s.l+003*s.s	},	--e.i[34] правый поручень...
		{	s.h-000*s.s,	s.h+003*s.s,	s.l+003*s.s,	s.h-006*s.s,	s.h+006*s.s,	s.l+006*s.s	},
		{	s.h-000*s.s,	s.h+006*s.s,	s.l+006*s.s,	s.h-006*s.s,	s.h+009*s.s,	s.l+009*s.s	},
		{	s.h-000*s.s,	s.h+009*s.s,	s.l+009*s.s,	s.h-006*s.s,	s.h+012*s.s,	s.l+012*s.s	},
		{	s.h-000*s.s,	s.h+012*s.s,	s.l+012*s.s,	s.h-006*s.s,	s.h+015*s.s,	s.l+015*s.s	},
		{	s.h-000*s.s,	s.h+015*s.s,	s.l+015*s.s,	s.h-006*s.s,	s.h+018*s.s,	s.l+018*s.s	},
		{	s.h-000*s.s,	s.h+018*s.s,	s.l+018*s.s,	s.h-006*s.s,	s.h+021*s.s,	s.l+021*s.s	},
		{	s.h-000*s.s,	s.h+021*s.s,	s.l+021*s.s,	s.h-006*s.s,	s.h+024*s.s,	s.l+024*s.s	},
		{	s.h-000*s.s,	s.h+024*s.s,	s.l+024*s.s,	s.h-006*s.s,	s.h+027*s.s,	s.l+027*s.s	},
		{	s.h-000*s.s,	s.h+027*s.s,	s.l+027*s.s,	s.h-006*s.s,	s.h+030*s.s,	s.l+030*s.s	},
		{	s.h-000*s.s,	s.h+030*s.s,	s.l+030*s.s,	s.h-006*s.s,	s.h+033*s.s,	s.l+033*s.s	},
		{	s.h-000*s.s,	s.h+033*s.s,	s.l+033*s.s,	s.h-006*s.s,	s.h+036*s.s,	s.l+036*s.s	},
		{	s.h-000*s.s,	s.h+036*s.s,	s.l+036*s.s,	s.h-006*s.s,	s.h+039*s.s,	s.l+039*s.s	},
		{	s.h-000*s.s,	s.h+039*s.s,	s.l+039*s.s,	s.h-006*s.s,	s.h+042*s.s,	s.l+042*s.s	},
		{	s.h-000*s.s,	s.h+042*s.s,	s.l+042*s.s,	s.h-006*s.s,	s.h+045*s.s,	s.l+045*s.s	},
		{	s.h-000*s.s,	s.h+045*s.s,	s.l+045*s.s,	s.h-006*s.s,	s.h+048*s.s,	s.l+048*s.s	},
		{	s.h-000*s.s,	s.h+048*s.s,	s.l+048*s.s,	s.h-006*s.s,	s.h+051*s.s,	s.l+051*s.s	},
		{	s.h-000*s.s,	s.h+051*s.s,	s.l+051*s.s,	s.h-006*s.s,	s.h+054*s.s,	s.l+054*s.s	},
		{	s.h-000*s.s,	s.h+054*s.s,	s.l+054*s.s,	s.h-006*s.s,	s.h+057*s.s,	s.l+057*s.s	},
		{	s.h-000*s.s,	s.h+057*s.s,	s.l+057*s.s,	s.h-006*s.s,	s.h+060*s.s,	s.l+060*s.s	},
		{	s.h-000*s.s,	s.h+060*s.s,	s.l+060*s.s,	s.h-006*s.s,	s.h+063*s.s,	s.l+063*s.s	},
		{	s.h-000*s.s,	s.h+063*s.s,	s.l+063*s.s,	s.h-006*s.s,	s.h+066*s.s,	s.l+066*s.s	},
		{	s.h-000*s.s,	s.h+066*s.s,	s.l+066*s.s,	s.h-006*s.s,	s.h+069*s.s,	s.l+069*s.s	},
		{	s.h-000*s.s,	s.h+069*s.s,	s.l+069*s.s,	s.h-006*s.s,	s.h+072*s.s,	s.l+072*s.s	},
		{	s.h-000*s.s,	s.h+072*s.s,	s.l+072*s.s,	s.h-006*s.s,	s.h+075*s.s,	s.l+075*s.s	},
		{	s.h-000*s.s,	s.h+075*s.s,	s.l+075*s.s,	s.h-006*s.s,	s.h+078*s.s,	s.l+078*s.s	},
		{	s.h-000*s.s,	s.h+078*s.s,	s.l+078*s.s,	s.h-006*s.s,	s.h+081*s.s,	s.l+081*s.s	},
		{	s.h-000*s.s,	s.h+081*s.s,	s.l+081*s.s,	s.h-006*s.s,	s.h+084*s.s,	s.l+084*s.s	},
		{	s.h-000*s.s,	s.h+084*s.s,	s.l+084*s.s,	s.h-006*s.s,	s.h+087*s.s,	s.l+087*s.s	},
		{	s.h-000*s.s,	s.h+087*s.s,	s.l+087*s.s,	s.h-006*s.s,	s.h+090*s.s,	s.l+090*s.s	},
		{	s.h-000*s.s,	s.h+090*s.s,	s.l+090*s.s,	s.h-006*s.s,	s.h+093*s.s,	s.l+093*s.s	},
		{	s.h-000*s.s,	s.h+093*s.s,	s.l+093*s.s,	s.h-006*s.s,	s.h+096*s.s,	s.l+096*s.s	},
		{	s.h-000*s.s,	s.h+096*s.s,	s.l+096*s.s,	s.h-006*s.s,	s.h+100*s.s,	s.l+100*s.s	},	--e.i[66]
	}
e.j =	{
		{	s.l+000*s.s,	s.l+000*s.s,	s.l+012*s.s,	s.l+001*s.s,	s.l+003*s.s,	s.l+033*s.s	},	--e.j[01] левое крепление...
		{	s.l+000*s.s,	s.l+003*s.s,	s.l+015*s.s,	s.l+001*s.s,	s.l+006*s.s,	s.l+035*s.s	},
		{	s.l+000*s.s,	s.l+006*s.s,	s.l+018*s.s,	s.l+001*s.s,	s.l+009*s.s,	s.l+038*s.s	},
		{	s.l+000*s.s,	s.l+009*s.s,	s.l+021*s.s,	s.l+001*s.s,	s.l+012*s.s,	s.l+041*s.s	},
		{	s.l+000*s.s,	s.l+012*s.s,	s.l+024*s.s,	s.l+001*s.s,	s.l+015*s.s,	s.l+044*s.s	},
		{	s.l+000*s.s,	s.l+015*s.s,	s.l+027*s.s,	s.l+001*s.s,	s.l+018*s.s,	s.l+047*s.s	},
		{	s.l+000*s.s,	s.l+018*s.s,	s.l+030*s.s,	s.l+001*s.s,	s.l+021*s.s,	s.l+050*s.s	},
		{	s.l+000*s.s,	s.l+021*s.s,	s.l+033*s.s,	s.l+001*s.s,	s.l+024*s.s,	s.l+053*s.s	},
		{	s.l+000*s.s,	s.l+024*s.s,	s.l+036*s.s,	s.l+001*s.s,	s.l+027*s.s,	s.l+056*s.s	},
		{	s.l+000*s.s,	s.l+027*s.s,	s.l+039*s.s,	s.l+001*s.s,	s.l+030*s.s,	s.l+059*s.s	},
		{	s.l+000*s.s,	s.l+030*s.s,	s.l+041*s.s,	s.l+001*s.s,	s.l+033*s.s,	s.l+062*s.s	},
		{	s.l+000*s.s,	s.l+033*s.s,	s.l+044*s.s,	s.l+001*s.s,	s.l+036*s.s,	s.l+065*s.s	},
		{	s.l+000*s.s,	s.l+036*s.s,	s.l+047*s.s,	s.l+001*s.s,	s.l+039*s.s,	s.l+068*s.s	},
		{	s.l+000*s.s,	s.l+039*s.s,	s.l+050*s.s,	s.l+001*s.s,	s.l+042*s.s,	s.l+071*s.s	},
		{	s.l+000*s.s,	s.l+042*s.s,	s.l+053*s.s,	s.l+001*s.s,	s.l+045*s.s,	s.l+074*s.s	},
		{	s.l+000*s.s,	s.l+045*s.s,	s.l+056*s.s,	s.l+001*s.s,	s.l+048*s.s,	s.l+077*s.s	},
		{	s.l+000*s.s,	s.l+048*s.s,	s.l+059*s.s,	s.l+001*s.s,	s.l+051*s.s,	s.l+080*s.s	},
		{	s.l+000*s.s,	s.l+051*s.s,	s.l+062*s.s,	s.l+001*s.s,	s.l+054*s.s,	s.l+083*s.s	},
		{	s.l+000*s.s,	s.l+054*s.s,	s.l+065*s.s,	s.l+001*s.s,	s.l+057*s.s,	s.l+086*s.s	},
		{	s.l+000*s.s,	s.l+057*s.s,	s.l+068*s.s,	s.l+001*s.s,	s.l+060*s.s,	s.l+089*s.s	},
		{	s.l+000*s.s,	s.l+060*s.s,	s.l+071*s.s,	s.l+001*s.s,	s.l+063*s.s,	s.l+092*s.s	},
		{	s.l+000*s.s,	s.l+063*s.s,	s.l+074*s.s,	s.l+001*s.s,	s.l+066*s.s,	s.l+095*s.s	},
		{	s.l+000*s.s,	s.l+066*s.s,	s.l+077*s.s,	s.l+001*s.s,	s.l+069*s.s,	s.l+098*s.s	},
		{	s.l+000*s.s,	s.l+069*s.s,	s.l+080*s.s,	s.l+001*s.s,	s.l+072*s.s,	s.l+101*s.s	},
		{	s.l+000*s.s,	s.l+072*s.s,	s.l+083*s.s,	s.l+001*s.s,	s.l+075*s.s,	s.l+104*s.s	},
		{	s.l+000*s.s,	s.l+075*s.s,	s.l+086*s.s,	s.l+001*s.s,	s.l+078*s.s,	s.l+107*s.s	},
		{	s.l+000*s.s,	s.l+078*s.s,	s.l+089*s.s,	s.l+001*s.s,	s.l+081*s.s,	s.l+110*s.s	},
		{	s.l+000*s.s,	s.l+081*s.s,	s.l+092*s.s,	s.l+001*s.s,	s.l+084*s.s,	s.l+113*s.s	},
		{	s.l+000*s.s,	s.l+084*s.s,	s.l+095*s.s,	s.l+001*s.s,	s.l+087*s.s,	s.l+116*s.s	},
		{	s.l+000*s.s,	s.l+087*s.s,	s.l+098*s.s,	s.l+001*s.s,	s.l+090*s.s,	s.l+119*s.s	},
		{	s.l+000*s.s,	s.l+090*s.s,	s.l+101*s.s,	s.l+001*s.s,	s.l+093*s.s,	s.l+121*s.s	},
		{	s.l+000*s.s,	s.l+093*s.s,	s.l+104*s.s,	s.l+001*s.s,	s.l+096*s.s,	s.l+124*s.s	},
		{	s.l+000*s.s,	s.l+096*s.s,	s.l+107*s.s,	s.l+001*s.s,	s.l+099*s.s,	s.l+127*s.s	},
		{	s.l+000*s.s,	s.l+099*s.s,	s.l+110*s.s,	s.l+001*s.s,	s.l+102*s.s,	s.l+130*s.s	},	--e.j[34]
		{	s.h-000*s.s,	s.l+000*s.s,	s.l+012*s.s,	s.h-001*s.s,	s.l+003*s.s,	s.l+033*s.s	},	--e.j[35] правое крепление
		{	s.h-000*s.s,	s.l+003*s.s,	s.l+015*s.s,	s.h-001*s.s,	s.l+006*s.s,	s.l+035*s.s	},
		{	s.h-000*s.s,	s.l+006*s.s,	s.l+018*s.s,	s.h-001*s.s,	s.l+009*s.s,	s.l+038*s.s	},
		{	s.h-000*s.s,	s.l+009*s.s,	s.l+021*s.s,	s.h-001*s.s,	s.l+012*s.s,	s.l+041*s.s	},
		{	s.h-000*s.s,	s.l+012*s.s,	s.l+024*s.s,	s.h-001*s.s,	s.l+015*s.s,	s.l+044*s.s	},
		{	s.h-000*s.s,	s.l+015*s.s,	s.l+027*s.s,	s.h-001*s.s,	s.l+018*s.s,	s.l+047*s.s	},
		{	s.h-000*s.s,	s.l+018*s.s,	s.l+030*s.s,	s.h-001*s.s,	s.l+021*s.s,	s.l+050*s.s	},
		{	s.h-000*s.s,	s.l+021*s.s,	s.l+033*s.s,	s.h-001*s.s,	s.l+024*s.s,	s.l+053*s.s	},
		{	s.h-000*s.s,	s.l+024*s.s,	s.l+036*s.s,	s.h-001*s.s,	s.l+027*s.s,	s.l+056*s.s	},
		{	s.h-000*s.s,	s.l+027*s.s,	s.l+039*s.s,	s.h-001*s.s,	s.l+030*s.s,	s.l+059*s.s	},
		{	s.h-000*s.s,	s.l+030*s.s,	s.l+041*s.s,	s.h-001*s.s,	s.l+033*s.s,	s.l+062*s.s	},
		{	s.h-000*s.s,	s.l+033*s.s,	s.l+044*s.s,	s.h-001*s.s,	s.l+036*s.s,	s.l+065*s.s	},
		{	s.h-000*s.s,	s.l+036*s.s,	s.l+047*s.s,	s.h-001*s.s,	s.l+039*s.s,	s.l+068*s.s	},
		{	s.h-000*s.s,	s.l+039*s.s,	s.l+050*s.s,	s.h-001*s.s,	s.l+042*s.s,	s.l+071*s.s	},
		{	s.h-000*s.s,	s.l+042*s.s,	s.l+053*s.s,	s.h-001*s.s,	s.l+045*s.s,	s.l+074*s.s	},
		{	s.h-000*s.s,	s.l+045*s.s,	s.l+056*s.s,	s.h-001*s.s,	s.l+048*s.s,	s.l+077*s.s	},
		{	s.h-000*s.s,	s.l+048*s.s,	s.l+059*s.s,	s.h-001*s.s,	s.l+051*s.s,	s.l+080*s.s	},
		{	s.h-000*s.s,	s.l+051*s.s,	s.l+062*s.s,	s.h-001*s.s,	s.l+054*s.s,	s.l+083*s.s	},
		{	s.h-000*s.s,	s.l+054*s.s,	s.l+065*s.s,	s.h-001*s.s,	s.l+057*s.s,	s.l+086*s.s	},
		{	s.h-000*s.s,	s.l+057*s.s,	s.l+068*s.s,	s.h-001*s.s,	s.l+060*s.s,	s.l+089*s.s	},
		{	s.h-000*s.s,	s.l+060*s.s,	s.l+071*s.s,	s.h-001*s.s,	s.l+063*s.s,	s.l+092*s.s	},
		{	s.h-000*s.s,	s.l+063*s.s,	s.l+074*s.s,	s.h-001*s.s,	s.l+066*s.s,	s.l+095*s.s	},
		{	s.h-000*s.s,	s.l+066*s.s,	s.l+077*s.s,	s.h-001*s.s,	s.l+069*s.s,	s.l+098*s.s	},
		{	s.h-000*s.s,	s.l+069*s.s,	s.l+080*s.s,	s.h-001*s.s,	s.l+072*s.s,	s.l+101*s.s	},
		{	s.h-000*s.s,	s.l+072*s.s,	s.l+083*s.s,	s.h-001*s.s,	s.l+075*s.s,	s.l+104*s.s	},
		{	s.h-000*s.s,	s.l+075*s.s,	s.l+086*s.s,	s.h-001*s.s,	s.l+078*s.s,	s.l+107*s.s	},
		{	s.h-000*s.s,	s.l+078*s.s,	s.l+089*s.s,	s.h-001*s.s,	s.l+081*s.s,	s.l+110*s.s	},
		{	s.h-000*s.s,	s.l+081*s.s,	s.l+092*s.s,	s.h-001*s.s,	s.l+084*s.s,	s.l+113*s.s	},
		{	s.h-000*s.s,	s.l+084*s.s,	s.l+095*s.s,	s.h-001*s.s,	s.l+087*s.s,	s.l+116*s.s	},
		{	s.h-000*s.s,	s.l+087*s.s,	s.l+098*s.s,	s.h-001*s.s,	s.l+090*s.s,	s.l+119*s.s	},
		{	s.h-000*s.s,	s.l+090*s.s,	s.l+101*s.s,	s.h-001*s.s,	s.l+093*s.s,	s.l+121*s.s	},
		{	s.h-000*s.s,	s.l+093*s.s,	s.l+104*s.s,	s.h-001*s.s,	s.l+096*s.s,	s.l+124*s.s	},
		{	s.h-000*s.s,	s.l+096*s.s,	s.l+107*s.s,	s.h-001*s.s,	s.l+099*s.s,	s.l+127*s.s	},
		{	s.h-000*s.s,	s.l+099*s.s,	s.l+110*s.s,	s.h-001*s.s,	s.l+102*s.s,	s.l+130*s.s	},	--e.j[68]
	}

e.k =	{ -- 1.24 x 0.04 x 0.04
		{	s.l+001*s.s,	s.l-100*s.s,	s.l+023*s.s,	s.l+005*s.s,	s.l+024*s.s,	s.l+027*s.s	},	--e.h[1] стойка левая ближняя (для ступеньки)
		{	s.l+001*s.s,	s.l-050*s.s,	s.h-027*s.s,	s.l+005*s.s,	s.l+075*s.s,	s.h-023*s.s	},	--e.h[2] стойка левая дальняя (для ступеньки)
		{	s.h-001*s.s,	s.l-100*s.s,	s.l+023*s.s,	s.h-005*s.s,	s.l+024*s.s,	s.l+027*s.s	},	--e.h[3] стойка правая ближняя (для ступеньки)
		{	s.h-001*s.s,	s.l-050*s.s,	s.h-027*s.s,	s.h-005*s.s,	s.l+075*s.s,	s.h-023*s.s	},	--e.h[4] стойка правая дальняя (для ступеньки)
	}
e.l =	{
		{	s.l+000*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.l+006*s.s,	s.l+003*s.s,	s.l+003*s.s	},	--e.i[01] левый поручень...
		{	s.l+000*s.s,	s.l+003*s.s,	s.l+003*s.s,	s.l+006*s.s,	s.l+006*s.s,	s.l+006*s.s	},
		{	s.l+000*s.s,	s.l+006*s.s,	s.l+006*s.s,	s.l+006*s.s,	s.l+009*s.s,	s.l+009*s.s	},
		{	s.l+000*s.s,	s.l+009*s.s,	s.l+009*s.s,	s.l+006*s.s,	s.l+012*s.s,	s.l+012*s.s	},
		{	s.l+000*s.s,	s.l+012*s.s,	s.l+012*s.s,	s.l+006*s.s,	s.l+015*s.s,	s.l+015*s.s	},
		{	s.l+000*s.s,	s.l+015*s.s,	s.l+015*s.s,	s.l+006*s.s,	s.l+018*s.s,	s.l+018*s.s	},
		{	s.l+000*s.s,	s.l+018*s.s,	s.l+018*s.s,	s.l+006*s.s,	s.l+021*s.s,	s.l+021*s.s	},
		{	s.l+000*s.s,	s.l+021*s.s,	s.l+021*s.s,	s.l+006*s.s,	s.l+024*s.s,	s.l+024*s.s	},
		{	s.l+000*s.s,	s.l+024*s.s,	s.l+024*s.s,	s.l+006*s.s,	s.l+027*s.s,	s.l+027*s.s	},
		{	s.l+000*s.s,	s.l+027*s.s,	s.l+027*s.s,	s.l+006*s.s,	s.l+030*s.s,	s.l+030*s.s	},
		{	s.l+000*s.s,	s.l+030*s.s,	s.l+030*s.s,	s.l+006*s.s,	s.l+033*s.s,	s.l+033*s.s	},
		{	s.l+000*s.s,	s.l+033*s.s,	s.l+033*s.s,	s.l+006*s.s,	s.l+036*s.s,	s.l+036*s.s	},
		{	s.l+000*s.s,	s.l+036*s.s,	s.l+036*s.s,	s.l+006*s.s,	s.l+039*s.s,	s.l+039*s.s	},
		{	s.l+000*s.s,	s.l+039*s.s,	s.l+039*s.s,	s.l+006*s.s,	s.l+042*s.s,	s.l+042*s.s	},
		{	s.l+000*s.s,	s.l+042*s.s,	s.l+042*s.s,	s.l+006*s.s,	s.l+045*s.s,	s.l+045*s.s	},
		{	s.l+000*s.s,	s.l+045*s.s,	s.l+045*s.s,	s.l+006*s.s,	s.l+048*s.s,	s.l+048*s.s	},
		{	s.l+000*s.s,	s.l+048*s.s,	s.l+048*s.s,	s.l+006*s.s,	s.l+051*s.s,	s.l+051*s.s	},
		{	s.l+000*s.s,	s.l+051*s.s,	s.l+051*s.s,	s.l+006*s.s,	s.l+054*s.s,	s.l+054*s.s	},
		{	s.l+000*s.s,	s.l+054*s.s,	s.l+054*s.s,	s.l+006*s.s,	s.l+057*s.s,	s.l+057*s.s	},
		{	s.l+000*s.s,	s.l+057*s.s,	s.l+057*s.s,	s.l+006*s.s,	s.l+060*s.s,	s.l+060*s.s	},
		{	s.l+000*s.s,	s.l+060*s.s,	s.l+060*s.s,	s.l+006*s.s,	s.l+063*s.s,	s.l+063*s.s	},
		{	s.l+000*s.s,	s.l+063*s.s,	s.l+063*s.s,	s.l+006*s.s,	s.l+066*s.s,	s.l+066*s.s	},
		{	s.l+000*s.s,	s.l+066*s.s,	s.l+066*s.s,	s.l+006*s.s,	s.l+069*s.s,	s.l+069*s.s	},
		{	s.l+000*s.s,	s.l+069*s.s,	s.l+069*s.s,	s.l+006*s.s,	s.l+072*s.s,	s.l+072*s.s	},
		{	s.l+000*s.s,	s.l+072*s.s,	s.l+072*s.s,	s.l+006*s.s,	s.l+075*s.s,	s.l+075*s.s	},
		{	s.l+000*s.s,	s.l+075*s.s,	s.l+075*s.s,	s.l+006*s.s,	s.l+078*s.s,	s.l+078*s.s	},
		{	s.l+000*s.s,	s.l+078*s.s,	s.l+078*s.s,	s.l+006*s.s,	s.l+081*s.s,	s.l+081*s.s	},
		{	s.l+000*s.s,	s.l+081*s.s,	s.l+081*s.s,	s.l+006*s.s,	s.l+084*s.s,	s.l+084*s.s	},
		{	s.l+000*s.s,	s.l+084*s.s,	s.l+084*s.s,	s.l+006*s.s,	s.l+087*s.s,	s.l+087*s.s	},
		{	s.l+000*s.s,	s.l+087*s.s,	s.l+087*s.s,	s.l+006*s.s,	s.l+090*s.s,	s.l+090*s.s	},
		{	s.l+000*s.s,	s.l+090*s.s,	s.l+090*s.s,	s.l+006*s.s,	s.l+093*s.s,	s.l+093*s.s	},
		{	s.l+000*s.s,	s.l+093*s.s,	s.l+093*s.s,	s.l+006*s.s,	s.l+096*s.s,	s.l+096*s.s	},
		{	s.l+000*s.s,	s.l+096*s.s,	s.l+096*s.s,	s.l+006*s.s,	s.l+100*s.s,	s.l+100*s.s	},	--e.i[33]
		{	s.h-000*s.s,	s.l+000*s.s,	s.l+000*s.s,	s.h-006*s.s,	s.l+003*s.s,	s.l+003*s.s	},	--e.i[34] правый поручень...
		{	s.h-000*s.s,	s.l+003*s.s,	s.l+003*s.s,	s.h-006*s.s,	s.l+006*s.s,	s.l+006*s.s	},
		{	s.h-000*s.s,	s.l+006*s.s,	s.l+006*s.s,	s.h-006*s.s,	s.l+009*s.s,	s.l+009*s.s	},
		{	s.h-000*s.s,	s.l+009*s.s,	s.l+009*s.s,	s.h-006*s.s,	s.l+012*s.s,	s.l+012*s.s	},
		{	s.h-000*s.s,	s.l+012*s.s,	s.l+012*s.s,	s.h-006*s.s,	s.l+015*s.s,	s.l+015*s.s	},
		{	s.h-000*s.s,	s.l+015*s.s,	s.l+015*s.s,	s.h-006*s.s,	s.l+018*s.s,	s.l+018*s.s	},
		{	s.h-000*s.s,	s.l+018*s.s,	s.l+018*s.s,	s.h-006*s.s,	s.l+021*s.s,	s.l+021*s.s	},
		{	s.h-000*s.s,	s.l+021*s.s,	s.l+021*s.s,	s.h-006*s.s,	s.l+024*s.s,	s.l+024*s.s	},
		{	s.h-000*s.s,	s.l+024*s.s,	s.l+024*s.s,	s.h-006*s.s,	s.l+027*s.s,	s.l+027*s.s	},
		{	s.h-000*s.s,	s.l+027*s.s,	s.l+027*s.s,	s.h-006*s.s,	s.l+030*s.s,	s.l+030*s.s	},
		{	s.h-000*s.s,	s.l+030*s.s,	s.l+030*s.s,	s.h-006*s.s,	s.l+033*s.s,	s.l+033*s.s	},
		{	s.h-000*s.s,	s.l+033*s.s,	s.l+033*s.s,	s.h-006*s.s,	s.l+036*s.s,	s.l+036*s.s	},
		{	s.h-000*s.s,	s.l+036*s.s,	s.l+036*s.s,	s.h-006*s.s,	s.l+039*s.s,	s.l+039*s.s	},
		{	s.h-000*s.s,	s.l+039*s.s,	s.l+039*s.s,	s.h-006*s.s,	s.l+042*s.s,	s.l+042*s.s	},
		{	s.h-000*s.s,	s.l+042*s.s,	s.l+042*s.s,	s.h-006*s.s,	s.l+045*s.s,	s.l+045*s.s	},
		{	s.h-000*s.s,	s.l+045*s.s,	s.l+045*s.s,	s.h-006*s.s,	s.l+048*s.s,	s.l+048*s.s	},
		{	s.h-000*s.s,	s.l+048*s.s,	s.l+048*s.s,	s.h-006*s.s,	s.l+051*s.s,	s.l+051*s.s	},
		{	s.h-000*s.s,	s.l+051*s.s,	s.l+051*s.s,	s.h-006*s.s,	s.l+054*s.s,	s.l+054*s.s	},
		{	s.h-000*s.s,	s.l+054*s.s,	s.l+054*s.s,	s.h-006*s.s,	s.l+057*s.s,	s.l+057*s.s	},
		{	s.h-000*s.s,	s.l+057*s.s,	s.l+057*s.s,	s.h-006*s.s,	s.l+060*s.s,	s.l+060*s.s	},
		{	s.h-000*s.s,	s.l+060*s.s,	s.l+060*s.s,	s.h-006*s.s,	s.l+063*s.s,	s.l+063*s.s	},
		{	s.h-000*s.s,	s.l+063*s.s,	s.l+063*s.s,	s.h-006*s.s,	s.l+066*s.s,	s.l+066*s.s	},
		{	s.h-000*s.s,	s.l+066*s.s,	s.l+066*s.s,	s.h-006*s.s,	s.l+069*s.s,	s.l+069*s.s	},
		{	s.h-000*s.s,	s.l+069*s.s,	s.l+069*s.s,	s.h-006*s.s,	s.l+072*s.s,	s.l+072*s.s	},
		{	s.h-000*s.s,	s.l+072*s.s,	s.l+072*s.s,	s.h-006*s.s,	s.l+075*s.s,	s.l+075*s.s	},
		{	s.h-000*s.s,	s.l+075*s.s,	s.l+075*s.s,	s.h-006*s.s,	s.l+078*s.s,	s.l+078*s.s	},
		{	s.h-000*s.s,	s.l+078*s.s,	s.l+078*s.s,	s.h-006*s.s,	s.l+081*s.s,	s.l+081*s.s	},
		{	s.h-000*s.s,	s.l+081*s.s,	s.l+081*s.s,	s.h-006*s.s,	s.l+084*s.s,	s.l+084*s.s	},
		{	s.h-000*s.s,	s.l+084*s.s,	s.l+084*s.s,	s.h-006*s.s,	s.l+087*s.s,	s.l+087*s.s	},
		{	s.h-000*s.s,	s.l+087*s.s,	s.l+087*s.s,	s.h-006*s.s,	s.l+090*s.s,	s.l+090*s.s	},
		{	s.h-000*s.s,	s.l+090*s.s,	s.l+090*s.s,	s.h-006*s.s,	s.l+093*s.s,	s.l+093*s.s	},
		{	s.h-000*s.s,	s.l+093*s.s,	s.l+093*s.s,	s.h-006*s.s,	s.l+096*s.s,	s.l+096*s.s	},
		{	s.h-000*s.s,	s.l+096*s.s,	s.l+096*s.s,	s.h-006*s.s,	s.l+100*s.s,	s.l+100*s.s	},	--e.i[66]
	}

-- diagonal railing
e.m = {}
for i=0,95,5 do
	table.insert(e.m, {
		-- x			y			z
		s.l+i*s.s,		s.h-003*s.s,	s.l+i*s.s,
		s.l+(i+5)*s.s,	s.h-000*s.s,	s.l+(i+5)*s.s
	})
end

FB.MODELS = {}

FB.MODELS.A01 = {e.e[01], e.f[01]} -- одна угловая стойка
FB.MODELS.A02 = {e.e[01], e.f[01], e.e[02], e.f[02]} -- две угловых стойки
FB.MODELS.A03 = {e.e[01], e.f[01], e.e[02], e.f[02], e.e[03], e.f[03]} -- три угловых стойки
FB.MODELS.A04 = {e.e[01], e.f[01], e.e[02], e.f[02], e.e[03], e.f[03], e.e[04], e.f[04]} -- четыре угловых стойки
FB.MODELS.A05 = {e.e[05], e.e[06], e.d[05]} -- дальние перила

FB.MODELS.A05DIA = {
	{	s.l+023*s.s,	s.l+000*s.s,	s.l+023*s.s,	s.l+027*s.s,	s.h-000*s.s,	s.l+027*s.s,	},
	{	s.h-027*s.s,	s.l+000*s.s,	s.h-027*s.s,	s.h-023*s.s,	s.h-000*s.s,	s.h-023*s.s,	},
	e.m[01], e.m[02], e.m[03], e.m[04], e.m[05], e.m[06], e.m[07], e.m[08], e.m[09], e.m[10], e.m[11],
	e.m[12], e.m[13], e.m[14], e.m[15], e.m[16], e.m[17], e.m[18], e.m[19], e.m[20], e.m[21], e.m[22],
	e.m[23], e.m[24], e.m[25], e.m[26], e.m[27], e.m[28], e.m[29], e.m[30], e.m[31], e.m[32], e.m[33]
}
FB.MODELS.A06 = {e.e[05], e.e[06], e.d[05], e.e[03], e.f[03]} -- дальние перила и угловая правая ближняя стойка
FB.MODELS.A07 = {e.e[05], e.e[06], e.d[05], e.e[04], e.f[04]} -- дальние перила и угловая левая ближняя стойка
FB.MODELS.A08 = {e.e[05], e.e[06], e.d[05], e.e[03], e.f[03], e.e[04], e.f[04]} -- дальние перила и угловые ближние стойки
FB.MODELS.A09 = {e.e[05], e.e[06], e.d[05], e.e[11], e.e[12], e.d[08]} -- дальние и левые перила
FB.MODELS.A10 = {e.e[05], e.e[06], e.d[05], e.e[11], e.e[12], e.d[08], e.e[03], e.f[03]} -- дальние и левые перила и угловая правая ближняя стойка
FB.MODELS.A11 = {e.e[07], e.e[08], e.d[06], e.e[11], e.e[12], e.d[08]} -- правые и левые перила
FB.MODELS.A12 = {e.e[07], e.e[08], e.d[06], e.e[11], e.e[12], e.d[08], e.e[05], e.e[06], e.d[05]} -- правые, левые и дальние перила
FB.MODELS.A13 = {e.k[01], e.k[02], -- наклонный левый поручень
		e.l[01], e.l[02], e.l[03], e.l[04], e.l[05], e.l[06], e.l[07], e.l[08], e.l[09], e.l[10], e.l[11],
		e.l[12], e.l[13], e.l[14], e.l[15], e.l[16], e.l[17], e.l[18], e.l[19], e.l[20], e.l[21], e.l[22],
		e.l[23], e.l[24], e.l[25], e.l[26], e.l[27], e.l[28], e.l[29], e.l[30], e.l[31], e.l[32], e.l[33],
		}
FB.MODELS.A14 = {e.k[03], e.k[04], -- наклонный правый поручень
		e.l[34], e.l[35], e.l[36], e.l[37], e.l[38], e.l[39], e.l[40], e.l[41], e.l[42], e.l[43], e.l[44],
		e.l[45], e.l[46], e.l[47], e.l[48], e.l[49], e.l[50], e.l[51], e.l[52], e.l[53], e.l[54], e.l[55],
		e.l[56], e.l[57], e.l[58], e.l[59], e.l[60], e.l[61], e.l[62], e.l[63], e.l[64], e.l[65], e.l[66],
		}
FB.MODELS.A15 = {e.k[01], e.k[02], e.k[03], e.k[04], -- наклонный двойной поручень
		e.l[01], e.l[02], e.l[03], e.l[04], e.l[05], e.l[06], e.l[07], e.l[08], e.l[09], e.l[10], e.l[11],
		e.l[12], e.l[13], e.l[14], e.l[15], e.l[16], e.l[17], e.l[18], e.l[19], e.l[20], e.l[21], e.l[22],
		e.l[23], e.l[24], e.l[25], e.l[26], e.l[27], e.l[28], e.l[29], e.l[30], e.l[31], e.l[32], e.l[33],
		e.l[34], e.l[35], e.l[36], e.l[37], e.l[38], e.l[39], e.l[40], e.l[41], e.l[42], e.l[43], e.l[44],
		e.l[45], e.l[46], e.l[47], e.l[48], e.l[49], e.l[50], e.l[51], e.l[52], e.l[53], e.l[54], e.l[55],
		e.l[56], e.l[57], e.l[58], e.l[59], e.l[60], e.l[61], e.l[62], e.l[63], e.l[64], e.l[65], e.l[66],
		}


FB.MODELS.B00 = {e.a[01]} -- нижняя плита
FB.MODELS.B01 = {e.a[01], e.e[01], e.f[01]} -- одна угловая стойка
FB.MODELS.B02 = {e.a[01], e.e[01], e.f[01], e.e[02], e.f[02]} -- две угловых стойки
FB.MODELS.B03 = {e.a[01], e.e[01], e.f[01], e.e[02], e.f[02], e.e[03], e.f[03]} -- три угловых стойки
FB.MODELS.B04 = {e.a[01], e.e[01], e.f[01], e.e[02], e.f[02], e.e[03], e.f[03], e.e[04], e.f[04]} -- четыре угловых стойки
FB.MODELS.B05 = {e.a[01], e.e[05], e.e[06], e.d[05]} -- дальние перила
FB.MODELS.B06 = {e.a[01], e.e[05], e.e[06], e.d[05], e.e[03], e.f[03]} -- дальние перила и угловая правая ближняя стойка
FB.MODELS.B07 = {e.a[01], e.e[05], e.e[06], e.d[05], e.e[04], e.f[04]} -- дальние перила и угловая левая ближняя стойка
FB.MODELS.B08 = {e.a[01], e.e[05], e.e[06], e.d[05], e.e[03], e.f[03], e.e[04], e.f[04]} -- дальние перила и угловые ближние стойки
FB.MODELS.B09 = {e.a[01], e.e[05], e.e[06], e.d[05], e.e[11], e.e[12], e.d[08]} -- дальние и левые перила
FB.MODELS.B10 = {e.a[01], e.e[05], e.e[06], e.d[05], e.e[11], e.e[12], e.d[08], e.e[03], e.f[03]} -- дальние и левые перила и угловая правая ближняя стойка
FB.MODELS.B11 = {e.a[01], e.e[07], e.e[08], e.d[06], e.e[11], e.e[12], e.d[08]} -- правые и левые перила
FB.MODELS.B12 = {e.a[01], e.e[07], e.e[08], e.d[06], e.e[11], e.e[12], e.d[08], e.e[05], e.e[06], e.d[05]} -- правые, левые и дальние перила

FB.MODELS.C00 = {e.b[01], e.b[02], -- ступеньки
		e.j[01], e.j[02], e.j[03], e.j[04], e.j[05], e.j[06], e.j[07], e.j[08], e.j[09], e.j[10], e.j[11],
		e.j[12], e.j[13], e.j[14], e.j[15], e.j[16], e.j[17], e.j[18], e.j[19], e.j[20], e.j[21], e.j[22],
		e.j[23], e.j[24], e.j[25], e.j[26], e.j[27], e.j[28], e.j[29], e.j[30], e.j[31], e.j[32], e.j[33], e.j[34],
		e.j[35], e.j[36], e.j[37], e.j[38], e.j[39], e.j[40], e.j[41], e.j[42], e.j[43], e.j[44], e.j[45],
		e.j[46], e.j[47], e.j[48], e.j[49], e.j[50], e.j[51], e.j[52], e.j[53], e.j[54], e.j[55], e.j[56],
		e.j[57], e.j[58], e.j[59], e.j[60], e.j[61], e.j[62], e.j[63], e.j[64], e.j[65], e.j[66], e.j[67], e.j[68],
		}
FB.MODELS.C01 = {e.b[01], e.b[02], e.h[01], e.h[02], -- ступеньки с левым поручнем
		e.j[01], e.j[02], e.j[03], e.j[04], e.j[05], e.j[06], e.j[07], e.j[08], e.j[09], e.j[10], e.j[11],
		e.j[12], e.j[13], e.j[14], e.j[15], e.j[16], e.j[17], e.j[18], e.j[19], e.j[20], e.j[21], e.j[22],
		e.j[23], e.j[24], e.j[25], e.j[26], e.j[27], e.j[28], e.j[29], e.j[30], e.j[31], e.j[32], e.j[33], e.j[34],
		e.j[35], e.j[36], e.j[37], e.j[38], e.j[39], e.j[40], e.j[41], e.j[42], e.j[43], e.j[44], e.j[45],
		e.j[46], e.j[47], e.j[48], e.j[49], e.j[50], e.j[51], e.j[52], e.j[53], e.j[54], e.j[55], e.j[56],
		e.j[57], e.j[58], e.j[59], e.j[60], e.j[61], e.j[62], e.j[63], e.j[64], e.j[65], e.j[66], e.j[67], e.j[68],
		e.i[01], e.i[02], e.i[03], e.i[04], e.i[05], e.i[06], e.i[07], e.i[08], e.i[09], e.i[10], e.i[11],
		e.i[12], e.i[13], e.i[14], e.i[15], e.i[16], e.i[17], e.i[18], e.i[19], e.i[20], e.i[21], e.i[22],
		e.i[23], e.i[24], e.i[25], e.i[26], e.i[27], e.i[28], e.i[29], e.i[30], e.i[31], e.i[32], e.i[33],
		}
FB.MODELS.C02 = {e.b[01], e.b[02], e.h[03], e.h[04], -- ступеньки с правым поручнем
		e.j[01], e.j[02], e.j[03], e.j[04], e.j[05], e.j[06], e.j[07], e.j[08], e.j[09], e.j[10], e.j[11],
		e.j[12], e.j[13], e.j[14], e.j[15], e.j[16], e.j[17], e.j[18], e.j[19], e.j[20], e.j[21], e.j[22],
		e.j[23], e.j[24], e.j[25], e.j[26], e.j[27], e.j[28], e.j[29], e.j[30], e.j[31], e.j[32], e.j[33], e.j[34],
		e.j[35], e.j[36], e.j[37], e.j[38], e.j[39], e.j[40], e.j[41], e.j[42], e.j[43], e.j[44], e.j[45],
		e.j[46], e.j[47], e.j[48], e.j[49], e.j[50], e.j[51], e.j[52], e.j[53], e.j[54], e.j[55], e.j[56],
		e.j[57], e.j[58], e.j[59], e.j[60], e.j[61], e.j[62], e.j[63], e.j[64], e.j[65], e.j[66], e.j[67], e.j[68],
		e.i[34], e.i[35], e.i[36], e.i[37], e.i[38], e.i[39], e.i[40], e.i[41], e.i[42], e.i[43], e.i[44],
		e.i[45], e.i[46], e.i[47], e.i[48], e.i[49], e.i[50], e.i[51], e.i[52], e.i[53], e.i[54], e.i[55],
		e.i[56], e.i[57], e.i[58], e.i[59], e.i[60], e.i[61], e.i[62], e.i[63], e.i[64], e.i[65], e.i[66],
		}
FB.MODELS.C03 = {e.b[01], e.b[02], e.h[01], e.h[02], e.h[03], e.h[04], -- ступеньки с обоими поручнями
		e.j[01], e.j[02], e.j[03], e.j[04], e.j[05], e.j[06], e.j[07], e.j[08], e.j[09], e.j[10], e.j[11],
		e.j[12], e.j[13], e.j[14], e.j[15], e.j[16], e.j[17], e.j[18], e.j[19], e.j[20], e.j[21], e.j[22],
		e.j[23], e.j[24], e.j[25], e.j[26], e.j[27], e.j[28], e.j[29], e.j[30], e.j[31], e.j[32], e.j[33], e.j[34],
		e.j[35], e.j[36], e.j[37], e.j[38], e.j[39], e.j[40], e.j[41], e.j[42], e.j[43], e.j[44], e.j[45],
		e.j[46], e.j[47], e.j[48], e.j[49], e.j[50], e.j[51], e.j[52], e.j[53], e.j[54], e.j[55], e.j[56],
		e.j[57], e.j[58], e.j[59], e.j[60], e.j[61], e.j[62], e.j[63], e.j[64], e.j[65], e.j[66], e.j[67], e.j[68],
		e.i[01], e.i[02], e.i[03], e.i[04], e.i[05], e.i[06], e.i[07], e.i[08], e.i[09], e.i[10], e.i[11],
		e.i[12], e.i[13], e.i[14], e.i[15], e.i[16], e.i[17], e.i[18], e.i[19], e.i[20], e.i[21], e.i[22],
		e.i[23], e.i[24], e.i[25], e.i[26], e.i[27], e.i[28], e.i[29], e.i[30], e.i[31], e.i[32], e.i[33],
		e.i[34], e.i[35], e.i[36], e.i[37], e.i[38], e.i[39], e.i[40], e.i[41], e.i[42], e.i[43], e.i[44],
		e.i[45], e.i[46], e.i[47], e.i[48], e.i[49], e.i[50], e.i[51], e.i[52], e.i[53], e.i[54], e.i[55],
		e.i[56], e.i[57], e.i[58], e.i[59], e.i[60], e.i[61], e.i[62], e.i[63], e.i[64], e.i[65], e.i[66],
		}

FB.MODELS.D00 = {e.c[01], e.g[01], e.g[02], e.d[01], e.d[02], e.d[03], e.d[04]} -- люк закрытый
FB.MODELS.D01 = {e.c[02], e.g[01], e.g[02], e.d[01], e.d[02], e.d[03], e.d[04]} -- люк открытый

FB.MODELS.S00 = {e.d[09], e.d[10], e.e[13], e.e[14]} -- открытая вертикальная лестница
FB.MODELS.S01 = {e.d[09], e.d[10], e.e[13], e.e[14], e.d[11], e.d[12], e.d[13], e.d[14], e.d[15], e.d[16], e.d[17], e.d[18], e.d[19]} -- закрытая вертикальная лестница
FB.MODELS.S02 = {e.d[09], e.d[10], e.d[11], e.d[12], e.d[13], e.d[06], e.d[07], e.d[08]} -- верх вертикальной лестницы
FB.MODELS.S03 = {e.d[09], e.d[10], e.e[13], e.e[14], e.d[11], e.d[13], e.d[08], e.d[07]} -- закрытая вертикальная лестница с выходом направо
FB.MODELS.S04 = {e.d[09], e.d[10], e.e[13], e.e[14], e.d[12], e.d[13], e.d[06], e.d[07]} -- закрытая вертикальная лестница с выходом налево
FB.MODELS.S05 = {e.d[09], e.d[10], e.e[13], e.e[14], e.d[13], e.d[07]} -- закрытая вертикальная лестница с выходами направо и налево

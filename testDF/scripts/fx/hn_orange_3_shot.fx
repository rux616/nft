//Hacknet - Shot - Orange - Lvl 3
//Spiralen
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (2.0943951 * 16), 20, 20), MOVEMENT(0, 0, 0) ,COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(3) / 10 + 0.05), LIFESPAN(150), BITMAP(49+Random(2)), GLOW(1));
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (4.1887902 * 16), 20, 20), MOVEMENT(0, 0, 0), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(3) / 10 + 0.05), LIFESPAN(150), BITMAP(50-Random(2)), GLOW(1));
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (6.2831853 * 16), 20, 20), MOVEMENT(0, 0, 0), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(3) / 10 + 0.05), LIFESPAN(150), BITMAP(49+Random(2)), GLOW(1));

//Line
[0, 1, -1] PARTICLE( 28, POS(PosX(), PosY(), PosZ()), MOVEMENT( EndPosX(), EndPosY(), EndPosZ()), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(8.6), LIFESPAN(750));


// Particle
[0, 1, 0.015] PARTICLE( 22, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(3) / 10 + 0.3), LIFESPAN(600 + Random(225)));
[0, 1, 0.015] PARTICLE( 24, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(3) / 10 + 0.3), LIFESPAN(750 + Random(75)));


// Fire Partikel
[0, 1, 0.025] PARTICLE( 25, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(4) / 10 + 0.6), LIFESPAN(150 + Random(150)));
// Blitze
[0, 1, 0.020] PARTICLE( 23, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(20) / 10 + 0.6), LIFESPAN(225 + Random(150)));
// Rauch
[0, 1, 0.035] PARTICLE( 19, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(200 + Random(40),100 + Random(80),Random(50) + 40, 200), SIZE(Random(3) / 10 + 0.3), LIFESPAN(600 + Random(150)));

//Corona Schuﬂcenter
[0, 1, -1] PARTICLE( 15, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(255, 220,100, 255), SIZE(2.25), LIFESPAN(1));
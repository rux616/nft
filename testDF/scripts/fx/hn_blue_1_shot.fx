//Hacknet - Shot - Blue - Lvl 1
//Spiralen
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (3.14159265 * 8), 20, 20), MOVEMENT(0, 0, 0) , COLORRGBA(Random(50) + 40, 100 + Random(80),200 + Random(40), 200), SIZE(Random(3) / 10 + 0.05), LIFESPAN(50), BITMAP(49+Random(2)), GLOW(1));

//Line
[0, 1, -1] PARTICLE( 28, POS(PosX(), PosY(), PosZ()), MOVEMENT( EndPosX(), EndPosY(), EndPosZ()), COLORRGBA(Random(50) + 40, 100 + Random(80),200 + Random(40), 200), SIZE(8.6), LIFESPAN(250));


// Particle
[0, 1, 0.015] PARTICLE( 22, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(Random(50) + 40, 100 + Random(80),200 + Random(40), 200), SIZE(Random(3) / 10 + 0.3), LIFESPAN(200 + Random(75)));
[0, 1, 0.015] PARTICLE( 24, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(Random(50) + 40, 100 + Random(80),200 + Random(40), 200), SIZE(Random(3) / 10 + 0.3), LIFESPAN(250 + Random(25)));


// Fire Partikel
[0, 1, 0.025] PARTICLE( 25, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(Random(50) + 40, 100 + Random(80),200 + Random(40), 200), SIZE(Random(4) / 10 + 0.6), LIFESPAN(50 + Random(50)));
// Blitze
[0, 1, 0.020] PARTICLE( 23, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(Random(50) + 40, 100 + Random(80),200 + Random(40), 200), SIZE(Random(20) / 10 + 0.6), LIFESPAN(75 + Random(50)));
// Rauch
[0, 1, 0.035] PARTICLE( 19, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(Random(50) + 40, 100 + Random(80),200 + Random(40), 200), SIZE(Random(3) / 10 + 0.3), LIFESPAN(200 + Random(50)));

//Corona Schuﬂcenter
[0, 1, -1] PARTICLE( 15, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(100, 220, 255, 255), SIZE(0.75), LIFESPAN(1));
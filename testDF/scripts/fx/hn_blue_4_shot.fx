//Hacknet - Shot - White - Lvl 4
//Spiralen
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (1.570796325 * 16), 20, 40), MOVEMENT(0, 0, 0), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(3) / 10 + 0.05), LIFESPAN(200), BITMAP(49+Random(2)), GLOW(1));
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (3.14159265  * 16), 40, 20), MOVEMENT(0, 0, 0), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(3) / 10 + 0.05), LIFESPAN(200), BITMAP(50-Random(2)), GLOW(1));
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (4.712388975 * 16), 20, 40), MOVEMENT(0, 0, 0), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(3) / 10 + 0.05), LIFESPAN(200), BITMAP(49+Random(2)), GLOW(1));
[0, 1, 0.01] PARTICLE( 12, GetRingPos(Time() * (6.2831853   * 16), 40, 20), MOVEMENT(0, 0, 0), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(3) / 10 + 0.05), LIFESPAN(200), BITMAP(50-Random(2)), GLOW(1));

//Line
[0, 1, -1] PARTICLE( 28, POS(PosX(), PosY(), PosZ()), MOVEMENT( EndPosX(), EndPosY(), EndPosZ()), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(8.6), LIFESPAN(1000));


// Particle
[0, 1, 0.015] PARTICLE( 22, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(3) / 10 + 0.3), LIFESPAN(800 + Random(300)));
[0, 1, 0.015] PARTICLE( 24, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(3) / 10 + 0.3), LIFESPAN(1000 + Random(100)));


// Fire Partikel
[0, 1, 0.025] PARTICLE( 25, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(4) / 10 + 0.6), LIFESPAN(200 + Random(200)));
// Blitze
[0, 1, 0.020] PARTICLE( 23, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(20) / 10 + 0.6), LIFESPAN(300 + Random(200)));
// Rauch
[0, 1, 0.035] PARTICLE( 19, GetPos(), MOVEMENT(Random(30) - 30, Random(30) - 30, Random(30)-30), COLORRGBA(200 + Random(40), 200 + Random(40),200 + Random(40), 180), SIZE(Random(3) / 10 + 0.3), LIFESPAN(800 + Random(200)));

//Corona Schuﬂcenter
[0, 1, -1] PARTICLE( 15, GetPos(), MOVEMENT(Random(20) - 20, Random(20) - 20, Random(20)-20), COLORRGBA(255, 255, 255, 255), SIZE(3), LIFESPAN(1));
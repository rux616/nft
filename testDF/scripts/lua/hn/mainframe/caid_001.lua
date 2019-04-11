--************************
--name   : caid_001.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/21
--lang   : en
--desc	 : General Faction Information
--npc    : Hacknet Broadcast Daemon v0.1.1
--************************
--changelog:
--2004/09/21(0.1): built from snows template
--************************


-- faction information
DBNAME="CityAdmin Broadcasting Daemon v0.0.1"
FACNAME="CityAdmin"
FACSLOGAN="For Reza, for Neocron, for the people"
FACGENERAL="General Faction Information\n'For Reza, for Neocron, for the people.' Freedom... an unknown concept until Reza's prospering rule began. The CityAdmin and NCPD were created by President Reza in order to protect and serve the people of Neocron. The NCPD protects the citizens from internal and external threats while the CityAdmin plays, as the name indicates, an administrative role in running the city.\n\nOf course President Reza, contrary to what dissidents and political agitators try to propagate, is not a despotic, power-hungry autocrat who holds the city in an iron grip. In fact, the benevolent leader of Neocron is a wise and learned man, who merely is head of the city council, which holds the true power in the city. Suspicions that the only reason for this council not being formed in free elections is because its current members are supposedly Reza's puppets, are of course totally unfounded and do not contain even the slightest trace of truth.\n\nCitizens are now allowed to live their lives in relative safety under the watchful eyes and vigilant trigger fingers of their unwavering guardians: the Cop- and S.T.O.R.M.-Bots. These mysterious law enforcers stand guard around the clock, protecting Neocron against those that would do it harm. Crime is kept to a minimum through the efficient system the CopBots impose. Each CopBot is judge, jury and executioner in one, their word is law, their actions irreversible."
FACHQ="Faction Headquarter\nThe headquarter of the CityAdmin is located in the Plaza district, the heart of Neocron. A majestic and impressive building of steel, concrete and glass acts like the hub of a wheel. From here the NCPD and various branches of the CityAdmin have full control of the core parts of Neocron and the security here is indisputable. Traditionally this building and its predecessors has always been the seat of the Neocron governement. Legend has it that even ancient Thor's headquarter was situated here, back when there was no city of Neocron yet and in its place there still stood the settlement of Jeriko."
FACPERS="Key Personalities\nPresident Lioon Reza, 64 years old and benevolent ruler of Neocron, was once closely befriended with the current leader of the Twilight Guardian terrorists, Hagen Yager. Together they founded the Guardian as an union to fight against the former oppressive government of the PSI Monks.\n\nIt is not clear whether the two men were really friends or whether it was just a functional coalition. It is, however, clear that Hagen Yager betrayed Reza and tried to take power for himself. President Reza and several loyalists managed to stop the insurrection and Yager fled. The Twilight Guardian and the former freedom fighters that were corrupted and mislead by Yager have now become public enemies as they wage a constant war of terror against the CityAdmin and the people of Neocron.\n\nPresident Reza rules Neocron with determination and fairness. His Cop- and S.T.O.R.M.-Bots keep the people safe from the constant threat of invading mutants and terrorists and CityAdmin makes sure every citizen lives a secure and productive life. Little is known about the man himself as he rarely makes public appearances and he is seldom seen attending social gatherings."
FACHISTORY="Faction History\nThe CityAdmin and NCPD was created shortly after the fall of the PSI Monk regime in 2724. The influence and ranks have grown steadily since then, to the point where CityAdmin now has complete control of the Plaza and Via Rosso districts. NCPD patrols and sentinels can be found throughout the rest of the city aswell but the influence is not strong enough to prevent all crimes in these sectors. Badmouthing agitators would suggest that it is not in the interest of CityAdmin to prevent all crimes from happenening to begin with."
FACRUMORS="Faction Rumors\nRumors about CityAdmin and President Lioon Reza are forbidden by CityAdmin directive NCCA-162-O-114. Creating or spreading such rumors poses an offense which is punishable with death."
FACREL="Faction Relations\nThe Brotherhood of Cran and the Twilight Guardian are the oldest and most established enemies of CityAdmin. There have been fierce conflicts between these factions since the beginning of President Reza's midterm. The Twilight Guardian frequently launches terrorist attacks against the city and while the Brotherhood of Crahn is not as frequent in their attacks, they still pose big threat.\n\nMost of the major companies in Neocron, like Tangent Technologies and ProtoPharm, are trusted allies of CityAdmin. They contribute with equipment, weapons and technology for the NCPD and in turn get special benefits from the administration.\n\nCityAdmin has a neutral stance towards the CityMercs as well as the Fallen Angels. The scientists of the Fallen Angels appear to be reluctant to build a binding cooperation with Neocron. Popular speculation blames influence from the Twilight Guardian for this."

-- main dialog
function DIALOG()

NODE(0)
	SAY("Broadcast system establishing link ...... Link established ...... System ready:"..DBNAME)
	ANSWER("       - Continue",10)
	ANSWER("       - Abort",25)
NODE(10)
	SAY("Information categories")
	ANSWER("       - General Faction Information",15)
	ANSWER("       - Faction Headquarter",16)
	ANSWER("       - Key Personalities",17)
	ANSWER("       - Faction History",18)
	ANSWER("       - Faction Rumors",19)
	ANSWER("       - Faction Relations",20)
	ANSWER("       - Abort",25)
NODE(15)
	SAY(""..FACGENERAL)
	ANSWER("Back",10)
NODE(16)
	SAY(""..FACHQ)
	ANSWER("Back",10)
NODE(17)
	SAY(""..FACPERS)
	ANSWER("Back",10)
NODE(18)
	SAY(""..FACHISTORY)
	ANSWER("Back",10)
NODE(19)
	SAY(""..FACPERS)
	ANSWER("Back",10)
NODE(20)
	SAY(""..FACRUMORS)
	ANSWER("Back",10)
NODE(25)
	SAY("Closing Link ...... Disconnecting ......"..FACNAME.." - "..FACSLOGAN)
	ANSWER("       - Disconnect",26)
	ANSWER("       - Cancel",0)
NODE(26)
	SAY("Disconnecting")
	ENDDIALOG()
end


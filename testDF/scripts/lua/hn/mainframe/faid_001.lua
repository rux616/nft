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
DBNAME="Fallen Angels Broadcasting Daemon v0.0.1"
FACNAME="FallenAngels"
FACSLOGAN="Only free minds can form a free society"
FACGENERAL="General Faction Information\n The Fallen Angels were founded by scientists who felt suppressed by the government of Neocron and restricted in their academic freedom. They established an underground city in the Wastelands and now work on researching special technologies, especially those that will enable comfortable living conditions for human beings under the changed conditions of life following WW III. They are only marginally interested in the politics of Neocron."
FACHQ="Faction Headquarter\n DOY SEC 03"
FACPERS="Key Personalities\n  Founder Thomas Cooper was a managerial engineer in the development laboratories of the government. His team of young scientists hated their boring task of researching new psi-implants, so after their budget was shortened drastically the team decided to build an autonomous city in the Wastelands. \n Chief of the Science Council is Sylvia Bennet, 47. The young scientist leads the Fallen Angels in the tradition of their founder, Thomas Cooper. All in all, she is a rather quiet person whose decisions are always based on reasoning. \n SysAdmin: Annie Simmons, 23, known online as 'Twinkle'. A child of Tech Haven, she has inherited a genetic fault stemming from radioactive emission. She suffers from hypersomnia and looks like a fourteen year-old. She has direct access to the net via a brain-to-online connection. She's an incredibly friendly and happy person who rummages about in other people's servers and leaves nice messages and security advice."
FACHISTORY="Faction History\n In 2633, 62 men and women left Neocron under the leadership of Thomas Cooper and moved to the Wastelands in order to build Tech Haven. The government, in the form of a council of scientists, was elected in a free and secret election. In the following years, the harsh environment took a heavy toll on the people in the newly-established city. Research efforts were initially concentrated on survival in the hostile environment. The departure of the 'Avenger' in 2654 was incomprehensible for the population of Tech Haven. The prevailing opinion was that humanity should only leave Earth after its ecology has been restored. In 2658 Frederick Lauster of BioTech Industries joined Tech Haven. The living conditions gradually improved in Tech Haven during the following years and many new inventions were presented to the scientist council. Some of them proved to be very useful when Lioon Reza and his troops bring about the downfall of the ruling Psi-Monks, which was followed by the signing of an official recognition agreement by Neocron's new leader. \n In 2750 the scientist council consists of five members under the leadership of Sylvia Bennet, a biologist. She is assisted by Manfred Goldstein (atomic physicist), Renata Verbenhaig (physician), Edmund Sirlund (human geneticist) and Marian Steiner (engineer)."
FACRUMORS="Faction Rumors\n "
FACREL="Faction Relations\n The Fallen Angels are allied to the Anarchy Breed as well as to the resistance fighters of the Twilight Guardian by the common conviction that the present governmental system is not the way. The scientists supply medication and information to the Guardian and in return are protected by the rebels. \n Damion Jordan (Tangent Technologies Inc.) is angered by the fact that talented researchers and scientists often leave his company and migrate to Tech Haven. For obvious reasons, these scientists are not interested in offers by the Black Dragon Clan to do medical research for them in order to improve the Clan's business areas of drug production and trafficking."

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


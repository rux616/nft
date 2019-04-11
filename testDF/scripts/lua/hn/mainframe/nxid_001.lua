--************************
--name   : nxid_001.lua
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
DBNAME="NExT Broadcasting Daemon v0.0.1"
FACNAME="NExT"
FACSLOGAN="Wherever you want to go - go NEXT!"
FACGENERAL="General Faction Information\n NEXT Systems Inc. used to develop spaceships for the Great Trek to Irata III. Since the completion of the space program the corporation concentrates on the development of HoverCars and HoverBikes. The subway system in Neocron was also developed by NEXT. In cooperation with Tangent Technologies, NEXT develops combat robots, tanks and other mobile arms systems."
FACHQ="Faction Headquarter\n Located in Plaza 4"
FACPERS="Key Personalities\n Craig Diggers, 55, founder of the company, was prevented from emigrating to Irata III by a tragic accident and has ever since eagerly pursued the plan of constructing new spaceships. \n SysAdmin Violet 'Gecko' Derix, 62, is the old-fashioned Grande Dame in her branch. She is famous for her extravagance and her love of luxury."
FACHISTORY="Faction History\n In 2723 Craig Diggers founded NEXT Systems Inc. His capable team of engineers was devoted to the development and construction of spaceships. Nine years later the company became profitable for the first time. In 2733 NEXT entered into cooperation with BioTech Industries, installing a modular system allowing the production of individual vehicles with specific combinations of Hi-Tech components. Three years later the company successfully went on the Neocron Stock Exchange 'Stock-X', experiencing a tremendous gain in market value. In 2747 the cooperation agreement with BioTech Industries was taken over by Tangent Technologies, the company that was newly founded by BioTech Industries this year. Two years later an accident foiled Craig's plan to leave Neocron; he missed the spaceship which set off to Irata III without him, with all his fortune and copies of all blueprints on board. \n In 2750 Craig Diggers takes over the leadership of NEXT Systems Inc. Again. His only aim in life seems to be the re-initiation of the Irata III program."
FACRUMORS="Faction Rumors\n There is not much talk about NEXT Inc. and-or its CEO. Seldom has the company made the impression to be involved in suspicious deals, and Craig Diggers himself was never involved in any major scandals or the like. So, naturally, only a few rumors are told about him and his company, and most people do not believe them. Without doubt NEXT is one if not the company in Neocron whith the most flawless reputation. \n Sometimes there is talk about CEO Diggers having a secret relationship whith SysAdmin Violet - his current secretary - any other woman working for NEXT Inc. Since Diggers is quite the dignified gentleman, some people have no problem believing this. Then again there is neither proof nor harm in it, should it be true. \n Other talk indicates that Craig Diggers is in some way or other involved in the alleged secret escapades of Eric Danmund, CEO of Diamond Real Estate. The reason is supposed to be Diggers' desire to re-initiate the governmental spaceflight program; it is said that he uses all connections to the CityAdmin he can think of, and Danmund would of course be an excellent contact. Sceptics say that Danmund's influence at CityAdmin is getting weaker steadily anyway, so they do not see why Diggers should waste his time on the Diamond CEO. \n Now and again you may hear talk about NEXT secretly supporting the Fallen Angels. Of course this is very far-fetched - after all, why should Diggers risk to fall in disgrace whith the CityAdmin should they ever find out?"
FACREL="Faction Relations\n A cooperation agreement exists between Tangent Technologies and NEXT Systems Inc. The CityMercs perform protection and guard duties and also carry out sabotage jobs for NEXT, mainly directed against ProtoPharm. NEXT Systems Inc. produces and supplies all vehicles to the NCPD and the administration. \n For some reason Craig has a strong antipathy to ProtoPharm and he tries to obstruct the company whenever he has the opportunity. \n Both the Anarchists and the Mutant hordes repeatedly launch attacks on NEXT transports in the outer regions of Neocron. \n Craig Diggers regards the Twilight Guardian as a threat for his business and his hopes for re-initiation of the space program - he has both personal and business reasons to support everyone who acts against the rebels."

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


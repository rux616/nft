--************************
--name   : btid_001.lua
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
DBNAME="Biotech Broadcasting Daemon v0.0.1"
FACNAME="BioTech"
FACSLOGAN="Custom Evolution"
FACGENERAL="General Faction Information\n BioTech develops biomechanical implants that enhance the abilities of human beings immensely (such as sharpened senses, greater strength, etc.) and also produces general medical and biological high-tech equipment."
FACHQ="Faction Headquarter\n Located in ViaRosso 1"
FACPERS="Key Personalities\n Company owner Robert Jordan \n 92 years old, manager from 2691 to 2748 and still owner of the company is an old-line businessman. He owns more money than he could ever spend and enjoys watching his sons Seymour and Damion competing with each other and at the same time increasing his wealth. \n Manager Seymour Jordan, \n 27, is the younger son of Robert Jordan and is sick of being reminded of that fact. Blessed with unscrupulousness and intelligence, he is pursuing obscure plans to win the competition with his brother and prove to his father that he is fit to run both companies."
FACHISTORY="Faction History\n Founded in 2638. Initially the young enterprise profited immensely from the boom in biotechnical research initiated by the construction of the intergalactic generation starship 'Avenger', but later the company concentrated on communication technology. In 2658 a highly profitable division for high-tech weapons under the code name Tangent was founded. In 2691 Robert Jordan, son of one of the founders, became the owner-manager and profited immensely from the tense political situation in Neocron. In 2746, the profitable former arms division Tangent splits off to become an independent company ,Tangent Technologies Inc. . Seymour Jordan, Robert's younger son was given the task of heading up the remaining company, BioTech Industries. In 2750 BioTech Industries signs a cooperation agreement with ProtoPharm for the joint development of medicaments and materials that enable a new generation of implants."
FACRUMORS="Faction Rumors\n Recent cooperation between BioTech and Protopharma is rumored to be more than just business, more than the co-development of next-generation bio-mechanical implements. The connection is said to be between BioTech CEO Seymour Jordan and Protopharma CEO Sandra Fraiser. There is little doubt that Seymour will exploit this relationship as much as possible. Anything to beat his brother Damion ,CEO, Tangent Technologies Inc. Harder to believe is the rumored connections between BioTech and the Tsunami Syndicate. Most people think that black market drug trafficking would seem to be too dangerous an activity for a high profile corporation like BioTech. Finally, conspiracy circles constantly accuse BioTech of putting surveying , tracking mechanics in their products. The theory is that the implants collect information from your body (tracking body movements or even brain waves , chemicals) and then transmit that information to a BioTech database which is in turn licensed to one or more third parties. The theory concludes that CityAdmin is the or one of the third parties in question."
FACREL="Faction Relations\n Currently Seymour Jordan's closest ally and business partner is ProtoPharm. Further cooperation agreements (services in return for biomedical equipment) exist with the CityMercs, the Brotherhood of Crahn and the Tsunami Syndicate. Amongst other things, BioTech Industries supplies STORM- and CopBot implants and has good connections with the administration. \n Seymour's brother Damion Jordan, manager of Tangent Technologies Inc., is his most odious rival. BioTech has problems with a lively black market controlled by the Black Dragon Clan and 'customers' who are not willing to pay for implants, which leads to certain hostilities with the Anarchy Breed and the Twilight Guardian."

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


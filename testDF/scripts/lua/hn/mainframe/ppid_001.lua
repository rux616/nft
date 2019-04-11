--************************
--name   : ppid_001.lua
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
DBNAME="ProtoPharm Broadcasting Daemon v0.0.1"
FACNAME="ProtoPharm"
FACSLOGAN="Your hope. Your strength. Your cure."
FACGENERAL="General Faction Information\n ProtoPharm produces most of the pharmaceutical supplies in Neocron. In this regard, virtually everything is produced, from standard Medkits to miracle cures."
FACHQ="Faction Headquarter\n Located in ViaRosso 2, can also be reached through Plaza 2 trough the PP Labs."
FACPERS="Key Personalities\n  Chairwoman Sandra Frasier, 42, is a brilliant and tough strategist who made her way up from the street. Currently she is rumored to have a relationship with Seymor Jordan, manager of Biotech Industries."
FACHISTORY="Faction History\n  In 2646 the medical company ProtoPharm emerged from a merger of several medical and chemical companies. Management was handed over to Jakob Finster, a young business attorney. In 2652 the development of cryogenic sleeping chambers for the 'Avenger' was successfully completed, in 2658 a version for rich customers in Neocron was developed. Some years later Jakob Finster - fallen ill to an incurable disease - entered a CryoVault(tm) himself in the hope of future progresses in medicine. In 2670 ProtoPharm started production for the mass market. Research into a multipurpose medication was pushed ahead, the fruits of which were harvested in the form of the formula for 'Vitae(tm)' in 2678. Three years later cheap generics of Vitae(tm) are supplied on the black market, which drove the company into a crisis. In 2739 'Spirula', a remedy for radiation damage, was introduced to the market by ProtoPharm. After a short boom, things changed drastically one year later when it was revealed that side effects of the drug caused devastating genetic damage on Neocron's population. In 2741, Sandra Frasier, the firm's successful attorney in the Spirula case, was made head of the company. Three years later there is still no cure for cryogenical preserved Jakob Finster. In 2747 the 'Spirula' scandal flared up again when it was revealed that the mutants who were created by Spirula were becoming sexually mature and fertile much faster than normal human beings. They were declared non-human beings by Lioon Reza. Killing them was regarded an act of mercy. In 2750 ProtoPharm and BioTech Industries enter a cooperation agreement."
FACRUMORS="Faction Rumors\n  Many odd stories float around the intriguing Sandra Frasier. For instance it is said that there is more to BioTech's and ProtoPharm's recent alliance than meets the eye and that Seymour Jordan's motives are far from being all business related. In the same direction go numerous stories about the means Ms Frasier used on her way into the upper levels of management. Some of those stories might be true, but others depict a Sandra Frasier so cold blooded and calculating, that they cannot be believed by anyone in his or her right mind. Rumor has it that the founder of ProtoPharm, Jakob Finster, fell terminally ill and therefore saw no other chance than to preserve himself in one of ProtoPharm's cryogenic chamber. Supposedly he is woken up every 20 years to see if he can be cured yet. But even if there was a cure, those who spread this rumor also say that Ms Frasier doesn't have the slightest interest in saving the old man."
FACREL="Faction Relations\n  Miss Frasier has very good contacts with both BioTech Ind. and its manager, Seymour Jordan. The CityMercs have an agreement of 'protection for equipment' with ProtoPharm, also accepting sabotage jobs against NEXT Systems. The Brotherhood of Crahn is a valuable source of information for Sandra Frasier. The good relations between ProtoPharm and the Administration of Neocron date back to the days of the 'Avenger' construction and the Great Trek, the success of which, among other things, was very much dependent on the CryoVaults(tm) produced by ProtoPharm. \n The animosities with NEXT Systems seem to stem from Sandra's rather tough business practices, while the aversion on Madame Veronique's side, the leader of the Tsunami Syndicate, seems to be of a more personal nature. Aside from weakness, Sandra Frasier hates unpredictable people. She finds the chaos and the freethinking ideas of the Breed very dubious and ProtoPharm supports all allies who work actively against the Anarchists. All mutants are the testimony of ProtoPharm's fallibility and unscrupulousness. If Sandra (and many other managerial employees of the company) had her way, all mutants would be eradicated for good."

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


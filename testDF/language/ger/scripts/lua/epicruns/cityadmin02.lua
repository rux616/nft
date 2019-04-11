--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--1,D,Pater Morpheus
--2,D,Jenna
--Items->NONE

--Startnode, Person
--0,Human Resource
--50,Hontoka
--100,Pater Morpheus
--150,Jenna

-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Es hat sich wieder etwas getan. Erinnern sie sich noch an den Mord an Defris? Nun, es scheint so, als ob da noch nicht das Ende der Fahnenstange erreicht war. Es ist ein weiterer Mord geschehen. Wieder ein CityAdmin Angestellter, vom Rang her nur knapp unter Defris.")
	
	ANSWER("WEITER",1)
NODE(1)
	SAY("Ich hoffe doch nicht, dass sich das noch weiter ausbreitet. Auf jeden Fall hat die NCPD alle verf�gbaren Kr�fte nun zur L�sung dieses Falles abgestellt. ")
	
	ANSWER("WEITER",2)
NODE(2)
	SAY("Es scheint aber nicht so leicht zu sein, da die ganzen Ermittlungen ziemlich schwammig ausgehen. Also wirklich, so viele Feinde der CityAdmin kann es doch gar nicht geben, dass sich das so in die L�nge zieht..")
	
	ANSWER("Ich denke das untersch�tzt ihr.",3)
NODE(3)
	SAY("Es gibt als Hauptfeind die Twilight Guardian. Sie versuchen st�ndig die Authorit�t der CityAdmin zu untergraben, aber das ist nichts neues. Ausser den Twilight Guardian kann ich nur noch die Crahn, Tsunami und die Black Dragon nennen.")
	
	ANSWER("WEITER",4)
NODE(4)
	SAY("Wobei Tsunami und Black Dragon aber eher ihren eigenen Gesch�ften nachgehen und die Crahn noch ihrer ehemaligen Gr�sse nachtrauern.")
	
	ANSWER("Aber ihr untersch�tzt, was Menschen f�r pers�nliche Motive haben k�nnen, die CityAdmin zu verachten.",5)
NODE(5)
	SAY("Ich denke da irrt ihr euch, die CityAdmin wird vollstens von den B�rgern Neocrons unterst�tzt. Manche B�rger kontrollieren die Stadt sogar mit Reza zusammen. Aber deswegen wollte ich auch nicht mit ihnen sprechen. Die NCPD ist zur Zeit etwas strapaziert.")
	
	ANSWER("WEITER",6)
NODE(6)
	SAY("Daher hat die CityAdmin beschlossen auch Runner als Ermittler einzusetzen und so der NCPD zu helfen. Es wurden Informationen �ber verschiedene Kontakte an mich weitergeleitet und ich habe vielen Runnern schon Aufgaben diesbez�glich verteilt. ")
	
	ANSWER("WEITER",7)
NODE(7)
	SAY("Leider gehen mir langsam die Runner aus. Es meldet sich keiner freiwillig und es ist keiner mehr qualifiziert genug um diese Aufgabe zu �bernehmen. Deshalb habe ich an sie gedacht.")
	
	ANSWER("Das ist ja wohl die H�he! Mir zu unterstellen, ich sei nicht qualifiziert genug! Und nun denken sie an mich, da ihnen die anderen Runner ausgehen?",8)
NODE(8)
	SAY("Meine �berlegungen stehen nicht zur Debatte und ob es ihnen gef�llt oder nicht, es gibt bessere Leute f�r einen solchen Job. Ich wollte es nat�rlich nicht so hart ausdr�cken, wie sie es jetzt vielleicht verstanden haben.")
	
	ANSWER("WEITER",9)
NODE(9)
	SAY("Falls ihr Interesse sie nun urpl�tzlich verlassen haben sollte, so werde ich das nat�rlich in ihrer Akte vermerken. Sie sollten inzwischen gelernt haben, ihr Temperament etwas zu z�geln.")
	
	ANSWER("Ist ja gut, ich bin ganz ruhig. Was soll ich denn tun?",10)
	ANSWER("Ich bin noch nicht wieder bereit f�r einen weiteren Auftrag.",13)
NODE(10)
	SAY("Die NCPD hat uns dar�ber informiert, dass ein gewisser Hontoka von den Tsunamis daran interessiert ist, uns Informationen zu verkaufen. Diese k�nnten unter Umst�nden wichtig f�r diesen Mordfall sein. Da aber dieses Subjekt ein Tsunami ist, bezweifle ich, dass er etwas sinnvolles von sich geben wird.")
	
	ANSWER("WEITER",11)
NODE(11)
	SAY("Aber die CityAdmin w�re nicht dort, wo sie heute ist, wenn sie nicht alle M�glichkeiten aussch�pfen w�rde. Sie k�nnen ihn in dem Industrial Sector 02 finden. Wenn sie genug Informationen haben, reden sie mit Officer Jenna. Sie sollten sie ja schon kennengelernt haben.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(12)
	ENDDIALOG()	

NODE(12)
	SAY("K�mmern sie sich doch weiter um die Mission. Hontoka wartet auf sie im Industrial Sektor 02. Falls sie was neues erfahren gehen sie damit zur NCPD.")
	ENDDIALOG()

NODE(13)
	SAY("Dann ruhen sie sich doch noch etwas aus und kommen wieder, sobald sie sich bereit f�hlen.")
	ENDDIALOG()		

-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Kommen sie von der CityAdmin?")
	
	ANSWER("Ja, mir wurde gesagt, sie w�rden Informationen f�r uns haben. Ich hoffe, dass lohnt sich auch.",51)
NODE(51)
	SAY("Ich denke schon, dass es sich lohnen w�rde. Glauben sie im Ernst, ich h�tte sie sonst hierher bestellt?")
	
	ANSWER("Nun gut, dann schiessen sie mal los.",52)
NODE(52)
	SAY("Nicht so schnell! Ich denke, ich kann als Gegenleistung auch etwas f�r diese Information verlangen oder nicht? Diese Information k�nnte einen ganzen Mordfall aufdecken und deshalb wird sie wohl auch etwas Wert sein.")
	
	ANSWER("Wer hat ihnen etwas �ber diesen Mord erz�hlt?",53)
NODE(53)
	SAY("Ach, dass hat sich doch schon �berall herumgesprochen. Die W�nde in Neocron haben doch alle Ohren, auch wenn viele Ohren die von Reza und seinen Lakaien sind.")
	
	ANSWER("Reza hat �berhaupt nichts hiermit zu tun, konzentrieren sie sich aufs Thema. Also, was wollen sie?",54)
NODE(54)
	SAY("Hehee. Das ist das sch�ne dabei, ich will nur einen kleinen Datacube. Einen kleinen, unwichtigen Datacube. Dann erz�hle ich ihnen was ich weiss. Also, lassen sie sich nicht zu viel Zeit.")
	SETNEXTDIALOGSTATE(55)
	ENDDIALOG()
	
NODE(55)
	TAKEITEM(1501)
	if(result==0)then
		SAY("Bringen sie mir endlich diesen Datacube.")
		ENDDIALOG()
	else
		SAY("Na, haben sie ihn?")
	
		ANSWER("Ja, hier, nehmen sie ihn und erz�hlen sie mir ihre Geschichte.",56)
	end
NODE(56)
	SAY("Datacubes sind recht faszinierend, da man sie immer auf ihren urspr�nglichen Besitzer zur�ckverfolgen kann. Wussten sie das? Hehee. Das war auch eine Erfindung der CityAdmin, um die B�rger von Neocron besser �berwachen zu k�nnen.")
	
	ANSWER("WEITER",57)
NODE(57)
	SAY("Aber nun gut, ich sage ihnen, was ich erfahren habe. Es soll ein Treffen zwischen Crahn und Twilight Guardian geben. Und ich denke, sie sollten sich das mal genauer ansehen.")
	
	ANSWER("Kann das bitte etwas pr�ziser sein?",58)
NODE(58)
	SAY("Ist ja gut, Runner. Besuchen sie mal Pater Morpheus in Crest Village. Ich habe geh�rt, es geht bei dem treffen um einen Austausch von Informationen. Auch wenn das nur zum Teil stimmt. Wollen sie wissen, was da in Wirklichkeit ausgetauscht wird?")
	
	ANSWER("Jetzt spannen sie mich nicht so auf die Folter, schiessen sie los.",59)
NODE(59)
	SAY("Die Crahn verkaufen Informationen �ber wichtige CityAdmin Angestellte. Und raten sie mal, wozu diese Informationen genutzt werden...")
	
	ANSWER("Die Morde...",60)
NODE(60)
	SAY("Nicht schlecht, ein CityAdmin Runner, der ein eigenes Hirn besitzt und denken kann. Besuchen sie Pater Morpheus. Ich denke er wird zwar nicht erfreut �ber euren Besuch sein, aber wom�glich finden sie noch etwas von Wert heraus. Jetzt verschwinden sie aber mal wieder. Es sieht nicht gut aus, wenn ich zu oft mit CityAdmin Leuten spreche.")
	SETNEXTDIALOGSTATE(61)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(61)
	SAY("Pater Morpheus ist in der Crest Village zu finden. Ich habe nicht mehr zu sagen, verschinden sie!")
	ENDDIALOG()

-----------------------------------------------------
--Padre Morpheus

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Ich w�nsche nicht mit euch zu sprechen.")
		ENDDIALOG()
	else
		SAY("Hrmph. Was w�nscht ihr von mir?")
	
		ANSWER("Ihr seid Pater Morpheus nicht wahr? Ich h�tte da ein paar Fragen.",101)
	end
NODE(101)
	SAY("Wer seid ihr, dass ihr einfach hierherkommt und mich mit euren Fragen bel�stigt?")
	
	ANSWER("Ich komme von der CityAdmin. Ich denke, dass ist Grund genug meine Fragen auch zu beantworten.",102)
NODE(102)
	SAY("Ihr habt noch viel zu lernen und ich sp�re das Chaos in eurem Inneren. Die CityAdmin? Ein Runner der CityAdmin w�rde nicht zu einem Pater der Crahn kommen, wenn es sich dadurch nicht etwas erhoffen w�rde. Aber vielleicht werde ich doch die richtigen Antworten auf eure Fragen finden.")
	
	ANSWER("Nun gut. Stimmt es, dass Crahn Informationen �ber Angestellte der CityAdmin f�hrt?",103)
NODE(103)
	SAY("Ist es nicht bei jedem so, dass er eine Notiz von jeder Person die er trifft in seinem Kopf macht? Ja, wir haben Informationen �ber euch. Crahn hat uns die Gabe gegeben selbst die geheimsten Informationen aus den K�pfen anderer zu erhaschen.")
	
	ANSWER("Und das auch noch so dreist zuzugeben, gibt es denn gar nichts, wovor Crahn zur�ckschrecken w�rde? Habt ihr diese Information an die Twilight Guardian weitergegeben?",104)
NODE(104)
	SAY("Und was ist, wenn ich ja sage? Wird dann die CityAdmin aufheulen und die Twilight Guardian und uns ausrotten? Ich denke nicht. Vielleicht k�nnte ich euch noch besser helfen. Sagt, worum geht es hier.")
	
	ANSWER("Stellt euch nicht dumm, die Morde an CityAdmin Angestellten sind schon weit genug bekannt.",105)
NODE(105)
	SAY("Auch CityAdmin Angestellte sind sterblich. War das alles, was ihr wolltet? CityAdmin?!")
	
	ANSWER("Ihr scheint nicht besonders gut auf die CityAdmin zu sprechen zu sein.",106)
NODE(106)
	SAY("Ach, ich sehe nur, wie Reza ganz Neocron zugrunde richtet. All das, was m�hsam von uns erbaut wurde, wird systematisch zerst�rt. Alles innerhalb von Neocron wird schlechter von Tag zu Tag.")
	
	ANSWER("Das ist ziemlich anma�end und in Neocron w�rde euch das den Kopf kosten. Ihr habt Gl�ck hier in den Wastelands zu sein. Ausserdem wart ihr es doch, die alles kaputt gemacht haben! Eure Diktatur hatte Neocron fast zugrunde gerichtet. Es war ein Gl�cksfall, dass Reza uns aus dieser misslichen Lage befreit hat.",107)
NODE(107)
	SAY("Wie furchtbar Naiv. Unter der F�hrung Crahns, war alles in bester Ordnung. Erst als die jetzige CityAdmin die F�hrung �bernahm ging alles den Bach hinunter. Die Outzone musste als erstes dran glauben, denn einst war die Outzone ein bl�hendes Gebiet voller gesch�ftiger Leute.")
	
	ANSWER("WEITER",108)
NODE(108)
	SAY("Heute, ist sie ein Monument f�r die Unf�higkeit von der jetzigen Regierung und damit Reza.")
	
	ANSWER("Jetzt verdreht mal nicht die Tatsachen! Wer hat denn all diese grausamen und menschenverachtenden Versuche durchgef�hrt? Wer hat die B�rger von Neocron in einem der Sklaverei �hnlichem Zustand gehalten? Das wart doch ihr! Ihr tollen Crahn! Wissen sie was ich von ihrem tollen Crahn halte? Ich scheiss auf ihn! Ohne Crahn w�re alles besser.",109)
NODE(109)
	SAY("So, das reicht jetzt! Crahn zu beleidigen ist eine Tots�nde! Nur euer Blut wird seinen Namen wieder reinwaschen k�nnen!!")
	ATTACK()
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Nicht jetzt, ich bin besch�ftigt.")
		ENDDIALOG()
	else
		SAY("Ich wurde schon dar�ber informiert, dass sie uns nun wieder bei den Ermittlungen helfen. Willkommen an Bord. Haben sie �ber den Kontakt, der ihnen zugewiesen wurde etwas herausgefunden? ")
	
		ANSWER("Nah, war eine Sackgasse. Ich habe nur erfahren, dass Crahn Informationen �ber CityAdmin Angestellte an die Twilight Guardian verkauft.",151)
	end
NODE(151)
	SAY("Sie haben was?")
	
	ANSWER("Ja, sie haben Informationen �ber CityAdmin Angestellte an die Guardians verkauft.",152)
NODE(152)
	SAY("Wir wussten schon, dass sie �ber extensive Informationen verf�gen. Doch, dass sie diese auch weiterverkaufen ist neu. Man h�tte diese Allianz zwischen Crahn und Twilight Guardian von vornherein ernster nehmen m�ssen.")
	
	ANSWER("Es gibt eine Allianz zwischen den beiden, wie kann das sein?",153)
NODE(153)
	SAY("Ja, es gibt eine Allianz. Sie ist zwar fragil, aber offensichtlich h�lt sie der Gedanke eines gemeinsamen Ziels zusammen. In diesem Fall der Umsturz der CityAdmin Regierung und damit von Reza. Wenn ich daran denke, wird mir ganz schwindelig. ")
	
	ANSWER("WEITER",154)
NODE(154)
	SAY("Damals hatten meine Eltern sehr unter den Crahn gelitten. Auch ein Grund warum ich heute bei der NCPD arbeite. Der Grund warum ich eher sterben werde, als diesen ... diesen Crahn Neocron zu �berlassen.")
	
	ANSWER("Aber das ist doch l�cherlich, wie sollten diese beiden Randgruppen denn das schaffen?",155)
NODE(155)
	SAY("Vergleichen sie es mit einem Virus, der einen kr�ftigen Menschen infiziert. Der Virus ist klein im Vergleich zum Menschen und doch bringt er ihn ins Grab. So �hnlich betrachten wir die Twilight Guardian und die Crahn. ")
	
	ANSWER("WEITER",156)
NODE(156)
	GIVEMONEY(5000)
	SETNEXTDIALOGSTATE(157)
	SAY("Wie zwei Viren, die man mit den geeigneten Mitteln bek�mpfen muss. T�uschen sie sich nicht, sie sind eine Gefahr f�r ganz Neocron. Aber was rede ich, es gibt so viel zu tun. Hier sind 5000 Credits als Belohnung. Halten sie sich fit, wir k�nnten ihre Dienste sicher wieder einmal gebrauchen.")
	EPICRUNFINISHED(1,1)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(157)
	SAY("Go away")
	ENDDIALOG()

end
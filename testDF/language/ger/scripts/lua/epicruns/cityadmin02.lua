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
	SAY("Ich hoffe doch nicht, dass sich das noch weiter ausbreitet. Auf jeden Fall hat die NCPD alle verfügbaren Kräfte nun zur Lösung dieses Falles abgestellt. ")
	
	ANSWER("WEITER",2)
NODE(2)
	SAY("Es scheint aber nicht so leicht zu sein, da die ganzen Ermittlungen ziemlich schwammig ausgehen. Also wirklich, so viele Feinde der CityAdmin kann es doch gar nicht geben, dass sich das so in die Länge zieht..")
	
	ANSWER("Ich denke das unterschätzt ihr.",3)
NODE(3)
	SAY("Es gibt als Hauptfeind die Twilight Guardian. Sie versuchen ständig die Authorität der CityAdmin zu untergraben, aber das ist nichts neues. Ausser den Twilight Guardian kann ich nur noch die Crahn, Tsunami und die Black Dragon nennen.")
	
	ANSWER("WEITER",4)
NODE(4)
	SAY("Wobei Tsunami und Black Dragon aber eher ihren eigenen Geschäften nachgehen und die Crahn noch ihrer ehemaligen Grösse nachtrauern.")
	
	ANSWER("Aber ihr unterschätzt, was Menschen für persönliche Motive haben können, die CityAdmin zu verachten.",5)
NODE(5)
	SAY("Ich denke da irrt ihr euch, die CityAdmin wird vollstens von den Bürgern Neocrons unterstützt. Manche Bürger kontrollieren die Stadt sogar mit Reza zusammen. Aber deswegen wollte ich auch nicht mit ihnen sprechen. Die NCPD ist zur Zeit etwas strapaziert.")
	
	ANSWER("WEITER",6)
NODE(6)
	SAY("Daher hat die CityAdmin beschlossen auch Runner als Ermittler einzusetzen und so der NCPD zu helfen. Es wurden Informationen über verschiedene Kontakte an mich weitergeleitet und ich habe vielen Runnern schon Aufgaben diesbezüglich verteilt. ")
	
	ANSWER("WEITER",7)
NODE(7)
	SAY("Leider gehen mir langsam die Runner aus. Es meldet sich keiner freiwillig und es ist keiner mehr qualifiziert genug um diese Aufgabe zu übernehmen. Deshalb habe ich an sie gedacht.")
	
	ANSWER("Das ist ja wohl die Höhe! Mir zu unterstellen, ich sei nicht qualifiziert genug! Und nun denken sie an mich, da ihnen die anderen Runner ausgehen?",8)
NODE(8)
	SAY("Meine Überlegungen stehen nicht zur Debatte und ob es ihnen gefällt oder nicht, es gibt bessere Leute für einen solchen Job. Ich wollte es natürlich nicht so hart ausdrücken, wie sie es jetzt vielleicht verstanden haben.")
	
	ANSWER("WEITER",9)
NODE(9)
	SAY("Falls ihr Interesse sie nun urplötzlich verlassen haben sollte, so werde ich das natürlich in ihrer Akte vermerken. Sie sollten inzwischen gelernt haben, ihr Temperament etwas zu zügeln.")
	
	ANSWER("Ist ja gut, ich bin ganz ruhig. Was soll ich denn tun?",10)
	ANSWER("Ich bin noch nicht wieder bereit für einen weiteren Auftrag.",13)
NODE(10)
	SAY("Die NCPD hat uns darüber informiert, dass ein gewisser Hontoka von den Tsunamis daran interessiert ist, uns Informationen zu verkaufen. Diese könnten unter Umständen wichtig für diesen Mordfall sein. Da aber dieses Subjekt ein Tsunami ist, bezweifle ich, dass er etwas sinnvolles von sich geben wird.")
	
	ANSWER("WEITER",11)
NODE(11)
	SAY("Aber die CityAdmin wäre nicht dort, wo sie heute ist, wenn sie nicht alle Möglichkeiten ausschöpfen würde. Sie können ihn in dem Industrial Sector 02 finden. Wenn sie genug Informationen haben, reden sie mit Officer Jenna. Sie sollten sie ja schon kennengelernt haben.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(12)
	ENDDIALOG()	

NODE(12)
	SAY("Kümmern sie sich doch weiter um die Mission. Hontoka wartet auf sie im Industrial Sektor 02. Falls sie was neues erfahren gehen sie damit zur NCPD.")
	ENDDIALOG()

NODE(13)
	SAY("Dann ruhen sie sich doch noch etwas aus und kommen wieder, sobald sie sich bereit fühlen.")
	ENDDIALOG()		

-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Kommen sie von der CityAdmin?")
	
	ANSWER("Ja, mir wurde gesagt, sie würden Informationen für uns haben. Ich hoffe, dass lohnt sich auch.",51)
NODE(51)
	SAY("Ich denke schon, dass es sich lohnen würde. Glauben sie im Ernst, ich hätte sie sonst hierher bestellt?")
	
	ANSWER("Nun gut, dann schiessen sie mal los.",52)
NODE(52)
	SAY("Nicht so schnell! Ich denke, ich kann als Gegenleistung auch etwas für diese Information verlangen oder nicht? Diese Information könnte einen ganzen Mordfall aufdecken und deshalb wird sie wohl auch etwas Wert sein.")
	
	ANSWER("Wer hat ihnen etwas über diesen Mord erzählt?",53)
NODE(53)
	SAY("Ach, dass hat sich doch schon überall herumgesprochen. Die Wände in Neocron haben doch alle Ohren, auch wenn viele Ohren die von Reza und seinen Lakaien sind.")
	
	ANSWER("Reza hat überhaupt nichts hiermit zu tun, konzentrieren sie sich aufs Thema. Also, was wollen sie?",54)
NODE(54)
	SAY("Hehee. Das ist das schöne dabei, ich will nur einen kleinen Datacube. Einen kleinen, unwichtigen Datacube. Dann erzähle ich ihnen was ich weiss. Also, lassen sie sich nicht zu viel Zeit.")
	SETNEXTDIALOGSTATE(55)
	ENDDIALOG()
	
NODE(55)
	TAKEITEM(1501)
	if(result==0)then
		SAY("Bringen sie mir endlich diesen Datacube.")
		ENDDIALOG()
	else
		SAY("Na, haben sie ihn?")
	
		ANSWER("Ja, hier, nehmen sie ihn und erzählen sie mir ihre Geschichte.",56)
	end
NODE(56)
	SAY("Datacubes sind recht faszinierend, da man sie immer auf ihren ursprünglichen Besitzer zurückverfolgen kann. Wussten sie das? Hehee. Das war auch eine Erfindung der CityAdmin, um die Bürger von Neocron besser überwachen zu können.")
	
	ANSWER("WEITER",57)
NODE(57)
	SAY("Aber nun gut, ich sage ihnen, was ich erfahren habe. Es soll ein Treffen zwischen Crahn und Twilight Guardian geben. Und ich denke, sie sollten sich das mal genauer ansehen.")
	
	ANSWER("Kann das bitte etwas präziser sein?",58)
NODE(58)
	SAY("Ist ja gut, Runner. Besuchen sie mal Pater Morpheus in Crest Village. Ich habe gehört, es geht bei dem treffen um einen Austausch von Informationen. Auch wenn das nur zum Teil stimmt. Wollen sie wissen, was da in Wirklichkeit ausgetauscht wird?")
	
	ANSWER("Jetzt spannen sie mich nicht so auf die Folter, schiessen sie los.",59)
NODE(59)
	SAY("Die Crahn verkaufen Informationen über wichtige CityAdmin Angestellte. Und raten sie mal, wozu diese Informationen genutzt werden...")
	
	ANSWER("Die Morde...",60)
NODE(60)
	SAY("Nicht schlecht, ein CityAdmin Runner, der ein eigenes Hirn besitzt und denken kann. Besuchen sie Pater Morpheus. Ich denke er wird zwar nicht erfreut über euren Besuch sein, aber womöglich finden sie noch etwas von Wert heraus. Jetzt verschwinden sie aber mal wieder. Es sieht nicht gut aus, wenn ich zu oft mit CityAdmin Leuten spreche.")
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
		SAY("Ich wünsche nicht mit euch zu sprechen.")
		ENDDIALOG()
	else
		SAY("Hrmph. Was wünscht ihr von mir?")
	
		ANSWER("Ihr seid Pater Morpheus nicht wahr? Ich hätte da ein paar Fragen.",101)
	end
NODE(101)
	SAY("Wer seid ihr, dass ihr einfach hierherkommt und mich mit euren Fragen belästigt?")
	
	ANSWER("Ich komme von der CityAdmin. Ich denke, dass ist Grund genug meine Fragen auch zu beantworten.",102)
NODE(102)
	SAY("Ihr habt noch viel zu lernen und ich spüre das Chaos in eurem Inneren. Die CityAdmin? Ein Runner der CityAdmin würde nicht zu einem Pater der Crahn kommen, wenn es sich dadurch nicht etwas erhoffen würde. Aber vielleicht werde ich doch die richtigen Antworten auf eure Fragen finden.")
	
	ANSWER("Nun gut. Stimmt es, dass Crahn Informationen über Angestellte der CityAdmin führt?",103)
NODE(103)
	SAY("Ist es nicht bei jedem so, dass er eine Notiz von jeder Person die er trifft in seinem Kopf macht? Ja, wir haben Informationen über euch. Crahn hat uns die Gabe gegeben selbst die geheimsten Informationen aus den Köpfen anderer zu erhaschen.")
	
	ANSWER("Und das auch noch so dreist zuzugeben, gibt es denn gar nichts, wovor Crahn zurückschrecken würde? Habt ihr diese Information an die Twilight Guardian weitergegeben?",104)
NODE(104)
	SAY("Und was ist, wenn ich ja sage? Wird dann die CityAdmin aufheulen und die Twilight Guardian und uns ausrotten? Ich denke nicht. Vielleicht könnte ich euch noch besser helfen. Sagt, worum geht es hier.")
	
	ANSWER("Stellt euch nicht dumm, die Morde an CityAdmin Angestellten sind schon weit genug bekannt.",105)
NODE(105)
	SAY("Auch CityAdmin Angestellte sind sterblich. War das alles, was ihr wolltet? CityAdmin?!")
	
	ANSWER("Ihr scheint nicht besonders gut auf die CityAdmin zu sprechen zu sein.",106)
NODE(106)
	SAY("Ach, ich sehe nur, wie Reza ganz Neocron zugrunde richtet. All das, was mühsam von uns erbaut wurde, wird systematisch zerstört. Alles innerhalb von Neocron wird schlechter von Tag zu Tag.")
	
	ANSWER("Das ist ziemlich anmaßend und in Neocron würde euch das den Kopf kosten. Ihr habt Glück hier in den Wastelands zu sein. Ausserdem wart ihr es doch, die alles kaputt gemacht haben! Eure Diktatur hatte Neocron fast zugrunde gerichtet. Es war ein Glücksfall, dass Reza uns aus dieser misslichen Lage befreit hat.",107)
NODE(107)
	SAY("Wie furchtbar Naiv. Unter der Führung Crahns, war alles in bester Ordnung. Erst als die jetzige CityAdmin die Führung übernahm ging alles den Bach hinunter. Die Outzone musste als erstes dran glauben, denn einst war die Outzone ein blühendes Gebiet voller geschäftiger Leute.")
	
	ANSWER("WEITER",108)
NODE(108)
	SAY("Heute, ist sie ein Monument für die Unfähigkeit von der jetzigen Regierung und damit Reza.")
	
	ANSWER("Jetzt verdreht mal nicht die Tatsachen! Wer hat denn all diese grausamen und menschenverachtenden Versuche durchgeführt? Wer hat die Bürger von Neocron in einem der Sklaverei ähnlichem Zustand gehalten? Das wart doch ihr! Ihr tollen Crahn! Wissen sie was ich von ihrem tollen Crahn halte? Ich scheiss auf ihn! Ohne Crahn wäre alles besser.",109)
NODE(109)
	SAY("So, das reicht jetzt! Crahn zu beleidigen ist eine Totsünde! Nur euer Blut wird seinen Namen wieder reinwaschen können!!")
	ATTACK()
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Nicht jetzt, ich bin beschäftigt.")
		ENDDIALOG()
	else
		SAY("Ich wurde schon darüber informiert, dass sie uns nun wieder bei den Ermittlungen helfen. Willkommen an Bord. Haben sie über den Kontakt, der ihnen zugewiesen wurde etwas herausgefunden? ")
	
		ANSWER("Nah, war eine Sackgasse. Ich habe nur erfahren, dass Crahn Informationen über CityAdmin Angestellte an die Twilight Guardian verkauft.",151)
	end
NODE(151)
	SAY("Sie haben was?")
	
	ANSWER("Ja, sie haben Informationen über CityAdmin Angestellte an die Guardians verkauft.",152)
NODE(152)
	SAY("Wir wussten schon, dass sie über extensive Informationen verfügen. Doch, dass sie diese auch weiterverkaufen ist neu. Man hätte diese Allianz zwischen Crahn und Twilight Guardian von vornherein ernster nehmen müssen.")
	
	ANSWER("Es gibt eine Allianz zwischen den beiden, wie kann das sein?",153)
NODE(153)
	SAY("Ja, es gibt eine Allianz. Sie ist zwar fragil, aber offensichtlich hält sie der Gedanke eines gemeinsamen Ziels zusammen. In diesem Fall der Umsturz der CityAdmin Regierung und damit von Reza. Wenn ich daran denke, wird mir ganz schwindelig. ")
	
	ANSWER("WEITER",154)
NODE(154)
	SAY("Damals hatten meine Eltern sehr unter den Crahn gelitten. Auch ein Grund warum ich heute bei der NCPD arbeite. Der Grund warum ich eher sterben werde, als diesen ... diesen Crahn Neocron zu überlassen.")
	
	ANSWER("Aber das ist doch lächerlich, wie sollten diese beiden Randgruppen denn das schaffen?",155)
NODE(155)
	SAY("Vergleichen sie es mit einem Virus, der einen kräftigen Menschen infiziert. Der Virus ist klein im Vergleich zum Menschen und doch bringt er ihn ins Grab. So ähnlich betrachten wir die Twilight Guardian und die Crahn. ")
	
	ANSWER("WEITER",156)
NODE(156)
	GIVEMONEY(5000)
	SETNEXTDIALOGSTATE(157)
	SAY("Wie zwei Viren, die man mit den geeigneten Mitteln bekämpfen muss. Täuschen sie sich nicht, sie sind eine Gefahr für ganz Neocron. Aber was rede ich, es gibt so viel zu tun. Hier sind 5000 Credits als Belohnung. Halten sie sich fit, wir könnten ihre Dienste sicher wieder einmal gebrauchen.")
	EPICRUNFINISHED(1,1)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(157)
	SAY("Go away")
	ENDDIALOG()

end
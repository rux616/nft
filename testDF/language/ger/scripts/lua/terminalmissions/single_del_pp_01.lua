--************************
--name   : SINGLE_DEL_PP_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		SAY("Ihre Hoffnung. Ihre Staerke. Ihre Heilung. ProtoPharm, kann ich behilflich sein, Sir?")
		SAY("Willkommen bei ProtoPharm. Wie kann ich Ihnen helfen, Sir?")
		SAY("Hey. Kommen Sie wegen dem Lieferjob?")
		SAY("Wie kann ich Ihnen helfen, Sir?")
		SAY("Gruesse. Sind Sie der Botenjunge?")
		SAY("Hallo. Wir haben einen Job fuer Sie, wenn Sie interessiert sind.")
		
		ANSWER("Hallo, Ich bin wegen dem Botenjob hier.",1)
		ANSWER("Yeah, klar kann ich ausliefern. Geben Sie mir einfach das Paket und die Adresse...",1)
		ANSWER("Sicher bin ich wegen dem Lieferjob hier. Sagen Sie mir einfach, was wann wohin muss und ich erledige das.",1)
		ANSWER("Tschuldigung, nicht mein Ding.",4)
		ANSWER("Finden Sie dafuer jemand anderen, ich hab keine Zeit.",4)
		ANSWER("Hey Bruder, ich liefere nichts aus, ok?",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Einer unserer Patienten braucht dringend diese Medizin. Finden Sie %NPC_NAME(1) in %NPC_WORLD(1) und geben Sie ihm das. Beeilung und kommen Sie danach hierher zurueck.")
		SAY("Hallo Runner. Ein Patient mit Namen %NPC_NAME(1) wartet in %NPC_WORLD(1) auf seine Medizin. Liefern Sie diese schnell dorthin und kehren Sie dann zu mir zurueck.")
		SAY("Ah ja, endlich. %NPC_NAME(1), einer unserer Patienten, braucht unbedingt diese Medizin in %NPC_WORLD(1). Liefern Sie an diese Adresse und kommen Sie dann wieder her, damit ich Sie bezahlen kann.")
		SAY("Na endlich, ein Runner. Bringen Sie diese Medizin zu %NPC_NAME(1) in %NPC_WORLD(1). Es wird dort dringend gebraucht. Nach der Lieferung kommen Sie einfach wieder her und holen Ihren Lohn ab.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Sehen Sie, das Leben dieses Patienten liegt in Ihren Haenden. Also beeilen Sie sich mit der Lieferung!")
				SAY("Runner, ich bekam gerade einen Anruf, dass das Paket noch nicht abgeliefert wurde. Ein Mensch koennte wegen Ihrer Nachlaessigkeit sterben! Also setzen Sie sich in Bewegung!!")
				SAY("Wenn Sie nicht ueber goettliche Kraefte verfuegen, sollten Sie besser die Medizin abliefern.")
				SAY("Ich hoffe, Sie wissen, dass es eine Person wegen Ihrer Saeumnis immer schlechter geht?")
				ENDDIALOG()
			else
	
				SAY("Danke fuer die puenktliche Lieferung. Die %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Einen schoenen Tag noch.")
				SAY("Gut gemacht. Der Patient waere gestorben, wenn Sie nicht gewesen waeren. Hier sind die verdienten %REWARD_MONEY() Credits als kleines Zeichen unserer Dankbarkeit.")
				SAY("Hallo. Die Lieferung wurde eben bestaetigt und %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Einen angenehmen Tag noch.")
				SAY("Der Patient rief an und bestaetigte die Lieferung. %REWARD_MONEY() Credits werden auf Ihr Konto ueberwiesen. Danke für Ihre Hilfe.")
				SAY("Gute Arbeit! %REWARD_MONEY() Credits wurden soeben auf Ihr Konto ueberwiesen. Es ist eine Freude mit Ihnen Geschaefte zu machen!")
				SAY("Zwar haben Sie lange gebraucht und der Patient waere fast gestorben, aber es ist nochmal gut gegangen. Deswegen sind hier Ihre %REWARD_MONEY() Credits. Sie koennen jetzt gehen.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Komm schon, komm schon! Gib es mir! Was soll das heißen, du hast es nicht dabei? Ich sterbe hier, verdammt nochmal!!")
				SAY("Was?! Ich brauche diese Medizin, du bloeder Hund. Findest du das lustig mit meinem Leben zu spielen? Hol meine Medizin!")
				SAY("Wieso schicken die einen Trottel wie dich? Bring endlich das Paket her oder das letzte, was ich mache, bevor ich sterbe, ist, dich zu erschiessen.")
				SAY("Yeah, das ist ein Spiel fuer dich, wie? Versteck das Paket vor dem kranken Krueppel, wie? Gib es mir oder es wird dir noch leid tun!")
				ENDDIALOG()
			else	
				SAY("Ah, meine Medizin. Vielen Dank! %NPC_NAME(0) wird dich fuer die Lieferung bezahlen.")
				SAY("Ist das die Medizin? Ja! Schnell, geben Sie her! %NPC_NAME(0) wird die Bezahlung regeln.")
				SAY("Ist das die ProtoPharm Medizin von %NPC_NAME(0)? Endlich, ich hab mir schon Sorgen gemacht. Das Buero wird Sie fuer die Lieferung bezahlen.")
				SAY("Das hat gedauert. Geben Sie schon her! %NPC_NAME(0) wird Sie bezahlen.")
				SAY("Medizin! Medizin! MEINE MEDIZIN! Gib sie mir, los gib sie mir schon! Oh ja, wundervolle Medizin!! Ihre Bezahlung erhalten Sie von %NPC_NAME(0). Endlich, meine Medizin!")
				ACTIVATEDIALOGTRIGGER(1)	
				STETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Hoeren Sie, wir haben hier bei ProtoPharm Arbeit zu erledigen. Wenn Sie nicht vorhaben, uns dabei zu unterstuetzen, sollten Sie besser gehen. Jetzt.")
		SAY("Wenn Sie Ihre Meinung aendern, wissen Sie, wo Sie mich finden koennen.")
		SAY("Sie strapazieren meine Geduld. Bitte gehen Sie. Einen schoenen Tag noch.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end

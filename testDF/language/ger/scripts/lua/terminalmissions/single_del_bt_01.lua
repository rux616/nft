--************************
--name   : SINGLE_DEL_BT_01.lua
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
                GENDERCHECK()
                        if (result==1) then 
                        SAY("Hallo Runner, was kann ich fuer Sie tun?")
                        SAY("Gruesse Runner, wie kann ich Ihnen helfen?")
                        SAY("Ja Runner? Wie kann ich Ihnen helfen?")
                        SAY("Hallo Sir, was kann ich fuer Sie tun?")
                        SAY("Ja Sir? Wie kann ich Ihnen helfen?")
                        else 
                        SAY("Hallo Runner, was kann ich fuer Sie tun?")
                        SAY("Gruesse Runner, wie kann ich Ihnen helfen?")
                        SAY("Ja Runner? Wie kann ich Ihnen helfen?")
                        SAY("Hallo Ma'am, was kann ich fuer Sie tun?")
                        SAY("Ja Ma'am? Wie kann ich Ihnen helfen?")
	        end      
          
                        ANSWER("Ich bin hier fuer den Botengang. Was haben Sie fuer mich?",1)
                        ANSWER("Ich habe mich fuer eine Botengang beworben.  Dem BioTech Terminal war zu entnehmen, dass ich mich bei Ihnen melden soll.",1)
                        ANSWER("Ich hab einen Botengang über das BioTech Terminal angenommen.  Nun bin ich hier, um die Sache zu uebernehmen.",1)
                        ANSWER("Entschuldigung, ich dachte Sie waeren jemand anderes.",4)
                        ANSWER("Aehm, nichts. Ich dachte Sie waeren jemand anderes, Bye.",4)
	
          NODE(1)
                GIVEQUESTITEM(91)
                SAY("Ah ja.  Ich brauche Sie fuer die Lieferung dieses Cubes an einen Techniker mit Namen %NPC_NAME(1).  Dieser arbeitet in %NPC_WORLD(1).  Sobald die Lieferung erfolgt ist, kommen Sie wieder her, um die Bezahlung entgegen zu nehmen.")
                SAY("Alles klar, Runner.  Bring diesen Datacube zu %NPC_NAME(1) in %NPC_WORLD(1).  Er wird fuer die Beendigung eines Auftrags benoetigt. Bitte kommen Sie nach der Ausfuehrung der Auslieferung wieder zu mir, damit ich Sie bezahlen kann.")
                SAY("Sehr gut! Dieser Datacube muss zu %NPC_NAME(1) in %NPC_WORLD(1) gebracht werden. Liefern Sie ihn ab und kommen Sie fuer die Bezahlung zu mir zurueck.")
                ACTIVATEDIALOGTRIGGER(0)
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()
        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(1)
                        if (result==0) then
                                SAY("Was wollen Sie denn noch hier?  %NPC_NAME(1) braucht schleunigst diesen Cube. Setzen Sie sich in Bewegung!")
                                SAY("Runner, wenn Sie den Lohn wollen, muessen Sie den Datacube abliefern.  %NPC_NAME(1) wird langsam ungeduldig.  Also los!")
                                ENDDIALOG()
                        else
                                SAY("Gute Arbeit, Runner.  Hier sind die %REWARD_MONEY() Credits. Geben Sie nicht gleich alles auf einmal aus, es sein denn, Sie kaufen BioTech Produkte.")
                                SAY("Danke fuer Ihre Hilfe.  Hier die Bezahlung: %REWARD_MONEY() Credits.  Einen angenehmen Tag noch.") 
                                ACTIVATEDIALOGTRIGGER(2)
                                ENDDIALOG()
                        end
        NODE(3)
                TAKEQUESTITEM(91)
                        if (result==0) then
                                SAY("Wo ist mein Wuerfel?  Ich brauche diesen Datacube, um einige Programmfehler zu beseitigen.  Sie kosten mich und BioTech wertvolle Zeit.  Also schaffen Sie den Cube her!")
                                SAY("Sie haben meinen Cube nicht?  Ich brauche ihn dringend, um meine Arbeit fortsetzen zu koennen.  Bitte, bringen Sie ihn mir schnellst moeglich.")
		SAY("Sie haben meinen Wuerfel nicht?  Ich brauche ihn dringend, um meine Arbeit fortsetzen zu koennen. Sie verschwenden meine Zeit.  Also bringen Sie ihn endlich her.")
                                ENDDIALOG()
                        else    
                                SAY("Haben Sie den Cube?  Grossartig!  Melden Sie sich bei %NPC_NAME(0), um die Bezahlung zu kassieren.")
                                SAY("Ah ja, die Lieferung. Danke, endlich kann ich hier weiterarbeiten am...oh, ach nichts.  Kehren Sie zu %NPC_NAME(0) zurueck, um dafuer bezahlt zu werden.")
                                SAY("Du bist der Runner mit meinem Wuerfel?  Gute Arbeit.  Jetzt koennen Sie ihren Lohn bei %NPC_NAME(0) abholen.")
                                ACTIVATEDIALOGTRIGGER(1)        
                                SETNEXTDIALOGSTATE(5)	
                                ENDDIALOG()
                        end
        NODE(4)
                    SAY("Bitte verschwenden Sie nicht meine Zeit. Einen schoenen Tag noch.")
                    SAY("Ich bin sehr beschaeftigt. Danke und einen schoenen Tag noch.")
                    SAY("Ich habe keine Zeit für sinnlose Gespraeche. Bitte gehen Sie weiter.")
                    SAY("Denken Sie, ich habe Zeit fuer Smalltalks? Auf Wiedersehen.")
                    ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end
 

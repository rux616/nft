--************************
--name   : spypatrader
--version: 0.01
--author :
--date   :
--lang   : en
--description:
--purpose:
--npc    :
--************************

function DIALOG()

NODE(0)
   SAY("Bonjour, je peux vous aider?")
   SAY("Comment puis-je vous aider?")
   SAY("En quoi puis-je vous aider?")
   ANSWER("Vous �tes un humain? Un robot? Un croisement?", 1)
   ANSWER("Ouah, un nouveau mod�le de garde! Je peux toucher?", 2)
   ANSWER("Vosu vendez ce genre de combinaison, n'est-ce pas?", 3)

NODE(1)
   SAY("*�clate de rire* Je ne suis ni un robot, ni un cyborg. Ce que vous voyez l�, c'est une combinaison anti-radiations.")
   ANSWER("Excellent! Vous en vendez?", 3)

NODE(2)
   SAY("Essayez!")
   SAY("Non merci!")
   ENDDIALOG()

NODE(3)
   SAY("En effet. Regardez �a!")
   TRADE()
   ENDDIALOG()

end
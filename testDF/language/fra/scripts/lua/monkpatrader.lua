--************************
--name   : monkpatrader
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
   SAY("Que Crahn guide tes pas!")
   SAY("Que Crahn veille sur toi!")
   SAY("Comment puis-je t'aider?")
   ANSWER("Belle cape! Je peux avoir la m�me!?", 1)
   ANSWER("J'emmerde Crahn, je veux une Power Cloak!", 2)
   ANSWER("Je veux t'acheter une Power Cloak, mon fr�re!", 3)

NODE(1)
   SAY("Cette... cape, comme vous dites, est une Power Cloak, fabriqu�e avec amour par nos fr�res, alors t�moigne-nous un peu de respect!")
   ANSWER("D'accord, mais �a ressemble � uen cape!", 2)
   ANSWER("Pardon, je voulais pas... Je peux en acheter une?", 3)

NODE(2)
   SAY("Crahn parle par ma bouche, et il me dit... il me dit que tu dois aller te faire foutre!!")
   SAY("Nous n'avons plus rien � nous dire.")
   ENDDIALOG()

NODE(3)
   SAY("Tr�s bien.")
   TRADE()
   ENDDIALOG()

end
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
	SAY("Quelque chose est arriv�. Vous rappelez-vous le meurtre de Defries? Eh bien, il semble que �a n'est pas fini. Il y a eu un autre meurtre d'un employ� de CityAdmin. Du m�me grade que Defries.")
	
	ANSWER("CONTINUER",1)
NODE(1)
	SAY("J'esp�re que �a n'ira pas plus loin. De toute fa�on, le NCPD a mis toutes les forces disponibles sur cette enqu�te.")
	
	ANSWER("CONTINUER",2)
NODE(2)
	SAY("Il ne semble plus facile de r�soudre ce myst�re, puisque toutes les investigations m�nent � un cul de sac. Allons, c'est impossible qu'il y ait tant d'ennemis du CityAdmin pour justifier des recherches si prolong�es ...")
	
	ANSWER("Je crois que vous avez sous-estim� la situation.",3)
NODE(3)
	SAY("Nos ennemis principaux sont les Gardiens du Cr�puscule. Ils essayent constamment de perturber l'autorit� du CityAdmin, mais �a n'est pas nouveau. Outre les Gardiens du Cr�puscule, il reste seulement les Crahn, les Tsunami et le Dragon Noir.")
	
	ANSWER("CONTINUER",4)
NODE(4)
	SAY("Mais Tsunami et le Dragon Noir sont trop occup�s par leurs propres affaires et leurs rivalit�s. Et Crahn est seulement un vestige de leur gouvernement destitu�. Ils pleurent encore la perte de leur pouvoir.")
	
	ANSWER("Mais vous sous-estimez les motivations personnelles qui pourraient mener certaines personnes � m�priser le CityAdmin.",5)
NODE(5)
	SAY("Je crois que vous faites erreur, le CityAdmin est enti�rement approuv� par ses citoyens. Quelques citoyens contr�lent Neocron, ainsi que Reza. Mais ce n'est pas de �a que je veux vous parler. Le NCPD est tr�s sollicit� � l'heure actuelle.")
	
	ANSWER("CONTINUER",6)
NODE(6)
	SAY("C'est pourquoi le CityAdmin a d�cid� de permettre � des Runners d'enqu�ter et d'aider ainsi le NCPD. Des informations sur divers contacts m'ont �t� exp�di�es et j'ai ensuite assign� ces missions � plusieurs Runners.")
	
	ANSWER("CONTINUER",7)
NODE(7)
	SAY("Malheureusement les Runners qui s'offrent pour une telle t�che ou qui sont assez qualifi�s sont une race rare. C'est pourquoi j'ai pens� � vous.")
	
	ANSWER("Vous me dites que je ne suis pas assez qualifi�?! Et maintenant vous me demandez parce que vous n'avez plus aucun autre Runner?!!",8)
NODE(8)
	SAY("Mon raisonnement n'est pas sujet � discussion. M�me si vous ne semblez pas l'accepter, il y a des Runners mieux appropri�s � un tel travail que vous. Je n'ai pas voulu �tre si rude dans mes propos, cependant.")
	
	ANSWER("CONTINUER",9)
NODE(9)
	SAY("Si vous d�cidez de ne pas continuer cette t�che, je devrai naturellement inscrire une note dans votre dossier. Vous devriez apprendre � contr�ler votre temp�rament, vous savez...")
	
	ANSWER("Ok, �a va aller. De quelle t�che s'agit-il?",10)
	ANSWER("Je ne suis pas encore d'humeur pour une autre t�che.",13)
NODE(10)
	SAY("Le NCPD nous a inform�s qu'un certain contact de Tsunami, du nom de Hontoka, cherche � nous vendre des informations. Ca pourrait �tre important pour notre affaire de meurtre, mais puisque l'information est offerte par un Tsunami je ne sait pas si elle sera fiable. Je doute qu'il soit honn�te.")
	
	ANSWER("CONTINUER",11)
NODE(11)
	SAY("Mais CityAdmin n'occuperait pas sa place actuelle s'il ne tenait pas compte de toutes les possibilit�s. Vous pouvez le trouver dans le secteur industriel 02. Ensuite, si vous obtenez assez d'informations, allez voir l'officier Jenna. Vous l'avez d�j� rencontr�e, je suppose?")
	ACCEPTMISSION()
	SETNEXTDIALOGSTATE(12)
	ENDDIALOG()	

NODE(12)
	SAY("Concentrez-vous sur la t�che. Hontoka vous attend dans le secteur industriel 02 . Si vous avez assez d'informations, allez au NCPD.")
	ENDDIALOG()

NODE(13)
	SAY("Pourquoi ne prendriez-vous pas un peu de repos? Et revenez quand vous estimez que vous �tes pr�t pour une nouvelle t�che.")
	ENDDIALOG()		

-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Etes-vous le contact de CityAdmin?")
	
	ANSWER("Oui, on m'a dit que vous avez des informations pour nous. J'esp�re qu'elles en valent la peine de faire ce long voyage juste pour vous rencontrer.",51)
NODE(51)
	SAY("Je crois que oui . Pensez-vous vraiment que je vous rencontrerais dans cet endroit si je n'�tais pas s�rieux??")
	
	ANSWER("OK, quelles sont vos informations?",52)
NODE(52)
	SAY("Pas si vite!! Je pense que je peux m'attendre � une certaine compensation pour cette information puisqu'elle pourrait aider � r�soudre un meurtre. Ca devrait me rapporter quelque chose.")
	
	ANSWER("Qui vous a parl� d'un meurtre?",53)
NODE(53)
	SAY("Tout le monde le sait maintenant. Les murs de Neocron ont des yeux et des oreilles, m�me s'ils appartiennent pour la plupart � Reza et son CityAdmin.")
	
	ANSWER("Ca n'est pas de Reza que nous parlons ici. Revenons � notre sujet. Que voulez-vous alors?",54)
NODE(54)
	SAY("H�h�. C'est �a qui est bien. Je veux juste un petit cube. Tout petit et sans importance. Alors je vous dirai ce que je sais. Ne me faites pas moisir trop longtemps.")
	SETNEXTDIALOGSTATE(55)
	ENDDIALOG()

NODE(55)
	TAKEITEM(1501)
	if(result==0)then
		SAY("D�p�chez-vous, et amenez-moi ce cube.")
		ENDDIALOG()
	else
		SAY("Alors?")
	
		ANSWER("Tenez, prenez-le, et dites-moi ce que vous savez.",56)
	end
NODE(56)
	SAY("Les cubes sont tr�s fascinants. Vous pouvez retracer chacun de leurs propri�taires, vous saviez �a? H� h�. C'�tait �galement une invention de CityAdmin pour garder un oeil sur leurs citoyens.")
	
	ANSWER("CONTINUER",57)
NODE(57)
	SAY("Mais je vous dirai quelle information j'ai recueillies. Il devrait y avoir une r�union entre Crahn et les Gardiens du Cr�puscule, et je crois que vous devriez suivre leurs mouvements de pr�s.")
	
	ANSWER("Pourriez-vous �tre un peu plus pr�cis?",58)
NODE(58)
	SAY("Bien, Runner. Allez voir le p�re Morpheus � Crest Village. J'ai entendu dire que la r�union est au sujet d'un �change d'informations. M�me si c'est seulement un des buts de la r�union. Vous voulez savoir ce qu'ils �changent vraiment?")
	
	ANSWER("Cessez de me narguer et dites-le moi.",59)
NODE(59)
	SAY("Crahn vend des informations sur des employ�s importants de CityAdmin. Devinez a quoi servent ces informations...")
	
	ANSWER("Les meurtres...",60)
NODE(60)
	SAY("Pas mal, un Runner de CityAdmin avec un cerveau et qui peut s'en servir! Allez voir le p�re Morpheus. Il ne sera pas heureux de voir arriver un CityAdmin, mais vous pourriez obtenir encore plus d'informations gr�ce � lui. Et foutez le camp maintenant, j'ai pas envie qu'on me voie parler � un CityAdmin.")
	SETNEXTDIALOGSTATE(61)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(61)
	SAY("Le p�re Morpheus peut �tre trouv� � Crest Village. Je n'ai plus rien � dire, d�gagez!")
	ENDDIALOG()

-----------------------------------------------------
--Padre Morpheus

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Je ne veux pas vous parler.")
		ENDDIALOG()
	else
		SAY("Hrmph. Que voulez-vous?")
	
		ANSWER("Vous �tes le p�re Morpheus, non? J'aurais quelques questions.",101)
	end
NODE(101)
	SAY("Qui �tes-vous pour m'assaillir avec vos questions?")
	
	ANSWER("Je suis de CityAdmin. Je crois que c'est une raison suffisante pour r�pondre.",102)
NODE(102)
	SAY("Vous avez encore beaucoup � apprendre et je sens le chaos dans votre esprit. Le CityAdmin, vous dites? Un Runner du CityAdmin ne rendrait pas visite � un P�re de Crahn, � moins d'esp�rer y gagner quelque chose. Peut-�tre que j'ai ce que vous d�sirez.")
	
	ANSWER("Tr�s bien. Est-il vrai que Crahn a des dossiers au sujet des employ�s de CityAdmin?",103)
NODE(103)
	SAY("Tout le monde juge mentalement les personnes qu'il rencontre, pourquoi ne pourrions-nous pas le faire nous aussi? Oui, nous avons des informations sur vous. Crahn nous a fait le don de lire dans les pens�es les plus secr�tes de l'esprit des gens.")
	
	ANSWER("Vous l'admettez, en plus! Reste-t-il quelque chose qui n'est pas souill� par les empreintes des Crahn? Avez-vous donn� ces informations aux Gardiens du Cr�puscule?",104)
NODE(104)
	SAY("Et si je disais oui? Il y aura-t-il des repr�sailles de CityAdmin? Vont-ils nous annihiler, nous et les Gardiens du Cr�puscule? Je ne pense pas. Peut-�tre pourrais-je mieux vous aider si je comprenais mieux ce que vous voulez exactement.")
	
	ANSWER("Ne jouez pas aux imb�ciles avec moi! Les deux employ�s de CityAdmin qui ont �t� tu�s de sang-froid sont connus presque partout.",105)
NODE(105)
	SAY("Ca prouve seulement que les employ�s de CityAdmin ne sont pas invincibles, mais mortels. Autre chose?")
	
	ANSWER("Vous ne semblez pas beaucoup aimer CityAdmin.",106)
NODE(106)
	SAY("Je vois seulement comment Reza d�truit Neocron. Tout ce que nous avions cr�� avec soin est syst�matiquement d�truit. Tout dans Neocron pourrit chaque jour un peu plus.")
	
	ANSWER("C'est tr�s arrogant et vous le paieriez de votre vie si vous entrez � Neocron. Vous avez de la chance d'�tre dans les Terres Br�l�es. Et apr�s tout, vous �tes ceux qui ont tout d�truit! Votre dictature a presque d�truit Neocron! Heureusement, Reza nous a lib�r�s de cette situation cruelle.",107)
NODE(107)
	SAY("Quel na�f vous �tes. Vous croyez vraiment que Reza est votre sauveur? Repensez au temps o� les Moines PSI gouvernaient, tout �tait en ordre. Comme le CityAdmin de Reza a succ�d�, tout a d�g�n�r�. L'Outzone fut le premier quartier � tomber. Auparavant, l'Outzone �tait un endroit anim�, o� vivaient des gens charmants.")
	
	ANSWER("CONTINUER",108)
NODE(108)
	SAY("Aujourd'hui, c'est un monument � l'incapacit� incroyable du gouvernement, et donc de Reza lui-m�me.")
	
	ANSWER("Ne modifiez pas les faits! Qui a commis toutes ces exp�riences honteuses sur des humains?! Qui a maintenu les citoyens de Neocron dans des conditions d'esclavage?! Vous! Vous, les b�tards de Crahn! Savez-vous ce que je pense de Crahn? Je l'emmerde! Sans cet abruti, tout serait meilleur!",109)
NODE(109)
	SAY("ASSEZ! Les insultes faites � Crahn ne peuvent �tre veng�es que par le sang!")
	ATTACK()
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Je suis occup�.")
		ENDDIALOG()
	else
		SAY("On m'a dit que vous nous aideriez encore une fois pour l'enqu�te. Bienvenue � bord. Avez-vous pu trouver quoique ce soit d'utile avec le contact que vous avez rencontr�?")
	
		ANSWER("C'�tait inutile. J'ai appris une seule chose, c'est que Crahn vend des informations sur les employ�s de CityAdmin aux Gardiens du Cr�puscule.",151)
	end
NODE(151)
	SAY("Qu'est-ce qu'ils ont fait?")
	
	ANSWER("Ils ont vendu des informations sur les employ�s de CityAdmin aux Gardiens du Cr�puscule.",152)
NODE(152)
	SAY("Nous savions qu'ils avaient des informations d�taill�es sur nous, mais nous ne savions pas qu'ils les vendaient. Cette alliance entre Crahn et les Gardiens du Cr�puscule aurait d� �tre prise au s�rieux d�s le d�but.")
	
	ANSWER("Une alliance entre eux? Comment est-ce possible?",153)
NODE(153)
	SAY("Oui, ils ont une alliance. Fragile, mais conserv�e en raison de leurs buts communs, j'imagine. Dans ce cas-ci, leur but est de renverser le gouvernement actuel. J'en ai des frissons rien que d'y penser.")
	
	ANSWER("CONTINUER",154)
NODE(154)
	SAY("A l'�poque, mes parents ont beaucoup souffert sous le gouvernement de Crahn. Une raison de plus � ma pr�sence au NCPD aujourd'hui. Et la raison pour laquelle je mourrai plut�t que de permettre � Crahn de r�gner sur Neocron une nouvelle fois.")
	
	ANSWER("Mais c'est fou, comment ces deux petits groupes pourraient arriver � faire cela?",155)
NODE(155)
	SAY("Comparez-les � un virus qui infecte un humain en bonne sant�. Le virus est petit par rapport � l'humain, mais il peut tout de m�me le tuer.")
	
	ANSWER("CONTINUER",156)
NODE(156)
	GIVEMONEY(5000)
	SETNEXTDIALOGSTATE(157)
	SAY("Comme les deux diff�rents types de virus que vous combattez avec des m�thodes appropri�es. Ne vous m�prenez pas, ils sont un danger pour Neocron. Mais je parle, je parle, et il y a tellement faire! Voici vos 5000 cr�dits. Restez en forme, je suis s�re que nous pourrions encore faire appel � vos services.")
	EPICRUNFINISHED(1,1)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(157)
	SAY("Go away")
	ENDDIALOG()

end
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
	SAY("Quelque chose est arrivé. Vous rappelez-vous le meurtre de Defries? Eh bien, il semble que ça n'est pas fini. Il y a eu un autre meurtre d'un employé de CityAdmin. Du même grade que Defries.")
	
	ANSWER("CONTINUER",1)
NODE(1)
	SAY("J'espère que ça n'ira pas plus loin. De toute façon, le NCPD a mis toutes les forces disponibles sur cette enquête.")
	
	ANSWER("CONTINUER",2)
NODE(2)
	SAY("Il ne semble plus facile de résoudre ce mystère, puisque toutes les investigations mènent à un cul de sac. Allons, c'est impossible qu'il y ait tant d'ennemis du CityAdmin pour justifier des recherches si prolongées ...")
	
	ANSWER("Je crois que vous avez sous-estimé la situation.",3)
NODE(3)
	SAY("Nos ennemis principaux sont les Gardiens du Crépuscule. Ils essayent constamment de perturber l'autorité du CityAdmin, mais ça n'est pas nouveau. Outre les Gardiens du Crépuscule, il reste seulement les Crahn, les Tsunami et le Dragon Noir.")
	
	ANSWER("CONTINUER",4)
NODE(4)
	SAY("Mais Tsunami et le Dragon Noir sont trop occupés par leurs propres affaires et leurs rivalités. Et Crahn est seulement un vestige de leur gouvernement destitué. Ils pleurent encore la perte de leur pouvoir.")
	
	ANSWER("Mais vous sous-estimez les motivations personnelles qui pourraient mener certaines personnes à mépriser le CityAdmin.",5)
NODE(5)
	SAY("Je crois que vous faites erreur, le CityAdmin est entièrement approuvé par ses citoyens. Quelques citoyens contrôlent Neocron, ainsi que Reza. Mais ce n'est pas de ça que je veux vous parler. Le NCPD est très sollicité à l'heure actuelle.")
	
	ANSWER("CONTINUER",6)
NODE(6)
	SAY("C'est pourquoi le CityAdmin a décidé de permettre à des Runners d'enquêter et d'aider ainsi le NCPD. Des informations sur divers contacts m'ont été expédiées et j'ai ensuite assigné ces missions à plusieurs Runners.")
	
	ANSWER("CONTINUER",7)
NODE(7)
	SAY("Malheureusement les Runners qui s'offrent pour une telle tâche ou qui sont assez qualifiés sont une race rare. C'est pourquoi j'ai pensé à vous.")
	
	ANSWER("Vous me dites que je ne suis pas assez qualifié?! Et maintenant vous me demandez parce que vous n'avez plus aucun autre Runner?!!",8)
NODE(8)
	SAY("Mon raisonnement n'est pas sujet à discussion. Même si vous ne semblez pas l'accepter, il y a des Runners mieux appropriés à un tel travail que vous. Je n'ai pas voulu être si rude dans mes propos, cependant.")
	
	ANSWER("CONTINUER",9)
NODE(9)
	SAY("Si vous décidez de ne pas continuer cette tâche, je devrai naturellement inscrire une note dans votre dossier. Vous devriez apprendre à contrôler votre tempérament, vous savez...")
	
	ANSWER("Ok, ça va aller. De quelle tâche s'agit-il?",10)
	ANSWER("Je ne suis pas encore d'humeur pour une autre tâche.",13)
NODE(10)
	SAY("Le NCPD nous a informés qu'un certain contact de Tsunami, du nom de Hontoka, cherche à nous vendre des informations. Ca pourrait être important pour notre affaire de meurtre, mais puisque l'information est offerte par un Tsunami je ne sait pas si elle sera fiable. Je doute qu'il soit honnête.")
	
	ANSWER("CONTINUER",11)
NODE(11)
	SAY("Mais CityAdmin n'occuperait pas sa place actuelle s'il ne tenait pas compte de toutes les possibilités. Vous pouvez le trouver dans le secteur industriel 02. Ensuite, si vous obtenez assez d'informations, allez voir l'officier Jenna. Vous l'avez déjà rencontrée, je suppose?")
	ACCEPTMISSION()
	SETNEXTDIALOGSTATE(12)
	ENDDIALOG()	

NODE(12)
	SAY("Concentrez-vous sur la tâche. Hontoka vous attend dans le secteur industriel 02 . Si vous avez assez d'informations, allez au NCPD.")
	ENDDIALOG()

NODE(13)
	SAY("Pourquoi ne prendriez-vous pas un peu de repos? Et revenez quand vous estimez que vous êtes prêt pour une nouvelle tâche.")
	ENDDIALOG()		

-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Etes-vous le contact de CityAdmin?")
	
	ANSWER("Oui, on m'a dit que vous avez des informations pour nous. J'espère qu'elles en valent la peine de faire ce long voyage juste pour vous rencontrer.",51)
NODE(51)
	SAY("Je crois que oui . Pensez-vous vraiment que je vous rencontrerais dans cet endroit si je n'étais pas sérieux??")
	
	ANSWER("OK, quelles sont vos informations?",52)
NODE(52)
	SAY("Pas si vite!! Je pense que je peux m'attendre à une certaine compensation pour cette information puisqu'elle pourrait aider à résoudre un meurtre. Ca devrait me rapporter quelque chose.")
	
	ANSWER("Qui vous a parlé d'un meurtre?",53)
NODE(53)
	SAY("Tout le monde le sait maintenant. Les murs de Neocron ont des yeux et des oreilles, même s'ils appartiennent pour la plupart à Reza et son CityAdmin.")
	
	ANSWER("Ca n'est pas de Reza que nous parlons ici. Revenons à notre sujet. Que voulez-vous alors?",54)
NODE(54)
	SAY("Héhé. C'est ça qui est bien. Je veux juste un petit cube. Tout petit et sans importance. Alors je vous dirai ce que je sais. Ne me faites pas moisir trop longtemps.")
	SETNEXTDIALOGSTATE(55)
	ENDDIALOG()

NODE(55)
	TAKEITEM(1501)
	if(result==0)then
		SAY("Dépêchez-vous, et amenez-moi ce cube.")
		ENDDIALOG()
	else
		SAY("Alors?")
	
		ANSWER("Tenez, prenez-le, et dites-moi ce que vous savez.",56)
	end
NODE(56)
	SAY("Les cubes sont très fascinants. Vous pouvez retracer chacun de leurs propriétaires, vous saviez ça? Hé hé. C'était également une invention de CityAdmin pour garder un oeil sur leurs citoyens.")
	
	ANSWER("CONTINUER",57)
NODE(57)
	SAY("Mais je vous dirai quelle information j'ai recueillies. Il devrait y avoir une réunion entre Crahn et les Gardiens du Crépuscule, et je crois que vous devriez suivre leurs mouvements de près.")
	
	ANSWER("Pourriez-vous être un peu plus précis?",58)
NODE(58)
	SAY("Bien, Runner. Allez voir le père Morpheus à Crest Village. J'ai entendu dire que la réunion est au sujet d'un échange d'informations. Même si c'est seulement un des buts de la réunion. Vous voulez savoir ce qu'ils échangent vraiment?")
	
	ANSWER("Cessez de me narguer et dites-le moi.",59)
NODE(59)
	SAY("Crahn vend des informations sur des employés importants de CityAdmin. Devinez a quoi servent ces informations...")
	
	ANSWER("Les meurtres...",60)
NODE(60)
	SAY("Pas mal, un Runner de CityAdmin avec un cerveau et qui peut s'en servir! Allez voir le père Morpheus. Il ne sera pas heureux de voir arriver un CityAdmin, mais vous pourriez obtenir encore plus d'informations grâce à lui. Et foutez le camp maintenant, j'ai pas envie qu'on me voie parler à un CityAdmin.")
	SETNEXTDIALOGSTATE(61)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(61)
	SAY("Le père Morpheus peut être trouvé à Crest Village. Je n'ai plus rien à dire, dégagez!")
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
	
		ANSWER("Vous êtes le père Morpheus, non? J'aurais quelques questions.",101)
	end
NODE(101)
	SAY("Qui êtes-vous pour m'assaillir avec vos questions?")
	
	ANSWER("Je suis de CityAdmin. Je crois que c'est une raison suffisante pour répondre.",102)
NODE(102)
	SAY("Vous avez encore beaucoup à apprendre et je sens le chaos dans votre esprit. Le CityAdmin, vous dites? Un Runner du CityAdmin ne rendrait pas visite à un Père de Crahn, à moins d'espérer y gagner quelque chose. Peut-être que j'ai ce que vous désirez.")
	
	ANSWER("Très bien. Est-il vrai que Crahn a des dossiers au sujet des employés de CityAdmin?",103)
NODE(103)
	SAY("Tout le monde juge mentalement les personnes qu'il rencontre, pourquoi ne pourrions-nous pas le faire nous aussi? Oui, nous avons des informations sur vous. Crahn nous a fait le don de lire dans les pensées les plus secrètes de l'esprit des gens.")
	
	ANSWER("Vous l'admettez, en plus! Reste-t-il quelque chose qui n'est pas souillé par les empreintes des Crahn? Avez-vous donné ces informations aux Gardiens du Crépuscule?",104)
NODE(104)
	SAY("Et si je disais oui? Il y aura-t-il des représailles de CityAdmin? Vont-ils nous annihiler, nous et les Gardiens du Crépuscule? Je ne pense pas. Peut-être pourrais-je mieux vous aider si je comprenais mieux ce que vous voulez exactement.")
	
	ANSWER("Ne jouez pas aux imbéciles avec moi! Les deux employés de CityAdmin qui ont été tués de sang-froid sont connus presque partout.",105)
NODE(105)
	SAY("Ca prouve seulement que les employés de CityAdmin ne sont pas invincibles, mais mortels. Autre chose?")
	
	ANSWER("Vous ne semblez pas beaucoup aimer CityAdmin.",106)
NODE(106)
	SAY("Je vois seulement comment Reza détruit Neocron. Tout ce que nous avions créé avec soin est systématiquement détruit. Tout dans Neocron pourrit chaque jour un peu plus.")
	
	ANSWER("C'est très arrogant et vous le paieriez de votre vie si vous entrez à Neocron. Vous avez de la chance d'être dans les Terres Brûlées. Et après tout, vous êtes ceux qui ont tout détruit! Votre dictature a presque détruit Neocron! Heureusement, Reza nous a libérés de cette situation cruelle.",107)
NODE(107)
	SAY("Quel naïf vous êtes. Vous croyez vraiment que Reza est votre sauveur? Repensez au temps où les Moines PSI gouvernaient, tout était en ordre. Comme le CityAdmin de Reza a succédé, tout a dégénéré. L'Outzone fut le premier quartier à tomber. Auparavant, l'Outzone était un endroit animé, où vivaient des gens charmants.")
	
	ANSWER("CONTINUER",108)
NODE(108)
	SAY("Aujourd'hui, c'est un monument à l'incapacité incroyable du gouvernement, et donc de Reza lui-même.")
	
	ANSWER("Ne modifiez pas les faits! Qui a commis toutes ces expériences honteuses sur des humains?! Qui a maintenu les citoyens de Neocron dans des conditions d'esclavage?! Vous! Vous, les bâtards de Crahn! Savez-vous ce que je pense de Crahn? Je l'emmerde! Sans cet abruti, tout serait meilleur!",109)
NODE(109)
	SAY("ASSEZ! Les insultes faites à Crahn ne peuvent être vengées que par le sang!")
	ATTACK()
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Je suis occupé.")
		ENDDIALOG()
	else
		SAY("On m'a dit que vous nous aideriez encore une fois pour l'enquête. Bienvenue à bord. Avez-vous pu trouver quoique ce soit d'utile avec le contact que vous avez rencontré?")
	
		ANSWER("C'était inutile. J'ai appris une seule chose, c'est que Crahn vend des informations sur les employés de CityAdmin aux Gardiens du Crépuscule.",151)
	end
NODE(151)
	SAY("Qu'est-ce qu'ils ont fait?")
	
	ANSWER("Ils ont vendu des informations sur les employés de CityAdmin aux Gardiens du Crépuscule.",152)
NODE(152)
	SAY("Nous savions qu'ils avaient des informations détaillées sur nous, mais nous ne savions pas qu'ils les vendaient. Cette alliance entre Crahn et les Gardiens du Crépuscule aurait dû être prise au sérieux dès le début.")
	
	ANSWER("Une alliance entre eux? Comment est-ce possible?",153)
NODE(153)
	SAY("Oui, ils ont une alliance. Fragile, mais conservée en raison de leurs buts communs, j'imagine. Dans ce cas-ci, leur but est de renverser le gouvernement actuel. J'en ai des frissons rien que d'y penser.")
	
	ANSWER("CONTINUER",154)
NODE(154)
	SAY("A l'époque, mes parents ont beaucoup souffert sous le gouvernement de Crahn. Une raison de plus à ma présence au NCPD aujourd'hui. Et la raison pour laquelle je mourrai plutôt que de permettre à Crahn de régner sur Neocron une nouvelle fois.")
	
	ANSWER("Mais c'est fou, comment ces deux petits groupes pourraient arriver à faire cela?",155)
NODE(155)
	SAY("Comparez-les à un virus qui infecte un humain en bonne santé. Le virus est petit par rapport à l'humain, mais il peut tout de même le tuer.")
	
	ANSWER("CONTINUER",156)
NODE(156)
	GIVEMONEY(5000)
	SETNEXTDIALOGSTATE(157)
	SAY("Comme les deux différents types de virus que vous combattez avec des méthodes appropriées. Ne vous méprenez pas, ils sont un danger pour Neocron. Mais je parle, je parle, et il y a tellement faire! Voici vos 5000 crédits. Restez en forme, je suis sûre que nous pourrions encore faire appel à vos services.")
	EPICRUNFINISHED(1,1)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(157)
	SAY("Go away")
	ENDDIALOG()

end
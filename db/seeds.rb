# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
3.times do
  my_category = Category.create(title: Faker::Book.genre)
  3.times do
    my_task = Task.new(title: Faker::Book.title,
                      deadline: Faker::Date.forward(23),
                      image: Faker::Avatar.image)
    my_task.category = my_category
    my_task.save
  end
end

Email.create(object: "[Slack] Notifications de l'espace de travail The Hacking Project ",
   body: "Vous avez un nouveau message direct provenant de 
   l'espace de travail The Hacking Project (thehackingproject.slack.com). ")
Email.create(object: "Inauguration Fresque Sweet Uno", 
  body: "La Maison de Heidelberg s’est associée à METROPOLINK-Festival. 
  Dans le cadre du jumelage Montpellier x Heidelberg, le street artiste allemand Sweet Uno vient à Montpellier pour réaliser une fresque murale. 
  Cette fresque deviendra un élément permanent du paysage urbain de la ville et permettra de mettre en lumière, par le biais de l’art urbain, les échanges entre Heidelberg et Montpellier.")
Email.create(object: "#MONHÉRAULT Gignac - POLAR", 
  body: "La Tournée #MONHERAULT organisée par le Conseil départemental de l'Hérault continue, cette fois-ci l'installation se fera  :
  Le samedi 24 novembre 2018, à la foire traditionnelle, Avenue Foch, en face de la Poste.
  
  Au programme : 
  Live painting par l'artiste Polar et atelier participatif gratuit avec LineUP à partir de 9h !
  
  Rappelez-vous le mois dernier, Polar avait réalisé cette magnifique fresque (photo ci-dessus) à la gare Saint Roch de Montpellier ! ")
Email.create(object: "Félicitations vous avez été sélectionné pour recevoir GRATUITEMENT...", 
  body: "Cher Client La Poste! 
  Votre Email Adresse [Jean.dupont@mail.com] a été sélectionné pour recevoir GRATUITEMENT un Apple iPhone 8 ou un SAMSUNG GALAXY S8.
  Pour recevoir votre cadeau, il vous suffit de répondre à notre sondage anonyme. Mais dépêchez-vous! Il ne reste qu'un nombre limité de cadeaux pour aujourd'hui!")
Email.create(object: "Tout le monde adore ce bandeau à 1€ et le 100 premiers utilisateur ", 
  body: " Vous avez reçu cet email car vous êtes abonné à wish.com.
  Pour ne plus recevoir d'emails de notre part, cliquez ici.
  
  1 Sansome St., 40th Floor, San Francisco, CA 94104 - USA
  
  Cet email a été envoyé d'une adresse qui n'accepte pas les emails entrants.
  Veuillez ne pas répondre à ce message. Si vous avez des questions, merci de nous contacter à support@wish.com ")
Email.create(object: "<<important>>", body: "Vous avez recevoir ce Message,car vous ne répondez pas. SVP, pour evitez de recevoir ce message plusieur fois, repond nous,est ce que voulez vous confirmer votre demande de désabonnement ?")
Email.create(object: "Cannabis huile", 
  body: "Qu'est-ce qui rend notre CBD organique spécial?
  Le CBD est de loin le cannabinoïde naturel le plus étudié, en particulier lorsqu'il s'agit d'applications médicales qui traitent de problèmes tels que le stress, la douleur, l'insomnie, la dépression et l'anxiété.
  Ce produit a été soigneusement testé, analysé et documenté en Suisse pour son rapport cannabinoïde et son adéquation microbiologique.")
Email.create(object: "Réservez un court séjour pour finir l’année en beauté", 
  body: "Décompressez avant les fêtes
  Avant de prendre vos bonnes résolutions, accordez-vous une dernière escapade citadine ou profitez une dernière fois du soleil.
  Voir toutes les locations")
Email.create(object: "En tournée dans tous les salons ", body: "La tournée des salons !
  Ça sonne un peu comme une chanson de Patrick Sébastien, mais c'est beaucoup plus classe que ça. Cette semaine, le planning est placé sous le signe des salons et autres évènements dans lesquels nous serons présents ! On vous fait l'inventaire. 
  La semaine du digital Ce jeudi 22 novembre, démarre La semaine du digital, organisée par Pôle Emploi, dans les locaux de l'école 42. Au menu : job dating, conférences et tables rondes. O'clock interviendra sur le thème <<Numérique et nouvelles modalités de formation>> en compagnie de OpenClassrooms. Vous viendrez ? 
   En savoir plus
  Salon de l'orientation
  L'ONISEP organise le Salon de l'Orientation du 23 au 25 novembre. Et la Grande École du Numérique nous a fait l'honneur de nous inviter pour y installer un stand O'clock ! Nous y serons pour vous rencontrer le dimanche 25 novembre ! 
  En savoir plus")
Email.create(object: "What inspired you to get into programming?", body: "
  What inspired you to pursue a programming career?
  Many career switchers discovered their passion for coding through a friend or peer at work. That was the case for this Web Developer Track student, Emily, who discovered her passion for coding through a trip abroad with her programming colleagues. Read her interview on the blog.
  Talk with a Student Advisor today about what excites you about changing careers and how Bloc can help you get there.
  Schedule Call")
Email.create(object: "Trouvez un bureau", body: "Trouvez un bureau à partager près de chez vous,")



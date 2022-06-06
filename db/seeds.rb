# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

Castle.destroy_all
User.destroy_all

User.create!(
  email: 'admin@admin.com',
  password: 'azerty',
  admin: true
)

user1 = User.create!(
  email: 'marcel.patulacci@gmail.com',
  password: 'azerty'
)

4.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
  user.save!
end

#------- Images------#

img1 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647727/development/ukdebkqmolli49l3t9x3brgvpr06.jpg')
img2 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647648/development/rcq0cibfx6oredffp6c7a9apynd9.jpg')
img3 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648643144/development/0nuug83vkcg1wcuwy35bmmqrogfk.jpg')
img4 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646247/development/7hjg22b6f08aw3mw6iewk04lupig.jpg')
img5 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647548/development/zld93seuddlbq2juovcv4w2zpieh.jpg')
img6 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647470/development/8339l6nuh1n59xdu24yzlkv8ur7l.jpg')
img7 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647403/development/rjd2u1v7an0yxhjthg6p4qsx7xrq.jpg')
img8 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647282/development/pls1cno8fcvq6hq0xivd5wq5ldsk.jpg')
img9 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647197/development/enu2jf9u07eann6f4ozafz1yxulc.jpg')
img10 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647082/development/rxa8pw4i48i3tk9hqnx2yw9s54u8.jpg')
img11 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646962/development/ryce72czxada9svo4b79safgjzm2.jpg')
img12 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646881/development/4xa097jyhfyu6l4i1e1ztc2znha6.jpg')
img13 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646777/development/nrnggyrl7o9j9cxuop0q0mzet8e1.jpg')
img14 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646611/development/da6roisasxn3olq58htnztxlcdmr.jpg')
img15 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646359/development/hpsvbrt2lpk7zjye482xkyvzxtlj.jpg')

castle1 = Castle.create!(name: "Château de Langeais",
                         description: "Une façade de château fort (pont levis, tours, mâchicoulis…),
                         mais côté jardin, une résidence marquée par le style Renaissance !
                         Dans ce château situé à 200 mètres de la Loire,
                         le mariage entre Charles VIII et Anne de Bretagne scella
                         le rattachement de la Bretagne au royaume de France. Richement meublé !",
                         address: "Place Pierre de Brosse, 37130 Langeais",
                         price: 1500,
                         user: user1)
castle1.photo.attach(io: img1, filename: "chateau-de-langeais-photo-vedette", content_type: 'image/jpg')

castle2 = Castle.create!(name: "Château d’Azay-le-Rideau",
                         description: "Visite d’un chef d’oeuvre de la première Renaissance française,
                         se reflétant dans un miroir d’eau alimenté par l’Indre. Erigé par Gilles Berthelot,
                         trésorier de France, le château sera ensuite confisqué par François 1er,
                         puis offert à Antoine Raffin, capitaine de ses gardes du corps !
                         Sur place, on apprécie tout particulièrement le joli parc à l’anglaise et
                         ses arbres majestueux.",
                         address: "Rue de Pineau, 37190 Azay-le-Rideau",
                         price: 1500,
                         user: User.all.sample)
castle2.photo.attach(io: img2, filename: "chateau-azay-le-rideau", content_type: 'image/jpg')

castle3 = Castle.create!(name: "Forteresse royale de Chinon",
                         description: "Henri II Plantagenêt, Jacques de Molay, Charles VII sans oublier Jeanne d’Arc
                         se sont succédés dans cette superbe forteresse médiévale au bord de la Vienne.
                         Entre Azay-le-Rideau et Saumur, une escapade à Chinon vous donnera aussi l’occasion de visiter
                         un domaine viticole dont la notoriété dépasse largement les frontières de la France.",
                         address: "2 Rue du Château, 37500 Chinon",
                         price: 1500,
                         user: User.all.sample)
castle3.photo.attach(io: img3, filename: "Chinon", content_type: 'image/jpg')

castle4 = Castle.create!(name: "Forteresse de Montbazon",
                         description: "Sous son impressionnant donjon du XIème siècle,
                         de nombreuses animations entraînent les visiteurs dans l’univers médiéval.
                         La visite guidée, les saynètes jouées (l’hygiène au Moyen Âge…) et les stands (l’herboriste,
                         le forgeron, le maitre d’arme…) sont particulièrement appréciés des familles !",
                         address: "12-14 Rue du Château, 37250 Montbazon",
                         price: 1500,
                         user: User.all.sample)
castle4.photo.attach(io: img4, filename: "forteresse-2018", content_type: 'image/jpg')

castle5 = Castle.create!(name: "Château Gaillard",
                         description: "Louis XII le confia à Dom Pacello, célèbre paysagistes de la Renaissance
                         italienne, qui acclimata les premiers orangers en France.
                         De magnifiques jardins se dévoilent le long des « sept sentiers du paradis ».
                         Vous aurez la possibilité de conclure la visite en savourant
                         un savoureux gâteau… à l’orange !",
                         address: "29 All. du Pont Moulin, 37400 Amboise",
                         price: 1500,
                         user: User.all.sample)
castle5.photo.attach(io: img5, filename: "1.-Vue-sur-le-Chateau---1", content_type: 'image/jpg')

castle6 = Castle.create!(name: "Château royal d’Amboise",
                         description: "A l’origine de la construction du château de Chambord,
                         François 1er passe une partie de son enfance à Amboise, avant de prendre la suite de
                         Charles VIII. La chapelle Saint-Hubert abrite le tombeau de Léonard de Vinci,
                         et un jardin honore la mémoire de l’émir Abd el-Kader, prisonnier pendant 4 années à Amboise,
                         après la prise de sa smala, à laquelle participa notamment Henri d’Orléans.",
                         address: "Mnt de l'Emir Abd el Kader, 37400 Amboise",
                         price: 1500,
                         user: User.all.sample)
castle6.photo.attach(io: img6, filename: "chateau-royal-amboise", content_type: 'image/jpg')

castle7 = Castle.create!(name: "Château du Clos Lucé",
                         description: "Bienvenue dans la dernière demeure de Léonard de Vinci.
                         Au programme, la découverte des nombreuses maquettes de ses inventions,
                         dans le château comme dans le parc. Ingénierie, mais aussi art, science, botanique, urbanisme :
                         le génie de Léonard de Vinci s’est attaqué à bien des domaines !",
                         address: "2 Rue du Clos Lucé, 37400 Amboise",
                         price: 1500,
                         user: User.all.sample)
castle7.photo.attach(io: img7, filename: "Chateau-du-Clos-Luce", content_type: 'image/jpg')

castle8 = Castle.create!(name: "Château de Chenonceau",
                         description: "Le célèbre château des dames, remarquable pour ses arches enjambant élégamment
                         le Cher, est notamment marqué par la rivalité entre Diane de Poitiers et Catherine de Médicis.
                         A la mort d’Henri II, celle-ci récupère le château de Chenonceau,
                         et offre à Diane le domaine de Chaumont-sur-Loire, près de Blois.",
                         address: "37150 Chenonceaux",
                         price: 1500,
                         user: User.all.sample)
castle8.photo.attach(io: img8, filename: "Chenonceau", content_type: 'image/jpg')

castle9 = Castle.create!(name: "Château de Villandry",
                         description: "Le château de Villandry est surtout connu pour ses splendides jardins,
                         en particulier son jardin du soleil et son potager Renaissance.
                         Comme le château royal d’Amboise, le domaine est aussi un refuge de la Ligue pour
                         la Protection des Oiseaux. Au fil des allées, l’art de vivre prend ici tout son sens,
                         et se prolonge également à l’intérieur du château,
                         à travers son mobilier, son décor, et son atmosphère.",
                         address: "3 Rue Principale, 37510 Villandry",
                         price: 1500,
                         user: User.all.sample)
castle9.photo.attach(io: img9, filename: "CHATEAU-ET-JARDINS-DE-VILLANDRY--4-", content_type: 'image/jpg')

castle10 = Castle.create!(name: "Château d’Ussé",
                          description: "Erigé au bord de l’Indre, ce château inspira Charles Perrault pour écrire
                          La Belle au Bois Dormant ! D’ailleurs, la visite intègre certaines scènes du conte.
                          Mais surtout, on retient de ce monument sa grande élégance, à l’instar des jardins
                          réalisés par André Le Nôtre, le célèbre jardinier de Louis XIV à qui l’on doit également
                          les jardins de Versailles, Vaux le Vicomte, et Chantilly.",
                          address: "3 Rue Principale, 37510 37420 Rigny-Ussé",
                          price: 1500,
                          user: User.all.sample)
castle10.photo.attach(io: img10, filename: "chateau-usse", content_type: 'image/jpg')

castle11 = Castle.create!(name: "Château de Montrésor",
                          description: "Marqué par la présence de Xavier Branicki, richissime comte polonais en exil,
                          ce monument historique cache une grande collection d’objets qui nous plonge dans de multiples
                          histoires. Une caverne d’Ali Baba dans un très bel écrin, au centre de l’un des plus beaux
                          villages de France.",
                          address: "11 Rue Xavier Branicki, 37460 Montrésor",
                          price: 1500,
                          user: User.all.sample)
castle11.photo.attach(io: img11, filename: "chateau-montresor", content_type: 'image/jpg')

castle12 = Castle.create!(name: "Château de l’Islette",
                          description: "Le lieu de rendez-vous favori de Camille Claudel et Auguste Rodin,
                          qui filait ici le parfait amour au calme, bercés par le courant le l’Indre.
                          Des barques sont d’ailleurs proposées à la location : à vous les joies du canotage,
                          au cœur d’un très beau parc, romantique à souhait.",
                          address: "9 Rte de Langeais, 37190 Azay-le-Rideau",
                          price: 1500,
                          user: User.all.sample)
castle12.photo.attach(io: img12, filename: "Chateau-de-l-Islette-8", content_type: 'image/jpg')

castle13 = Castle.create!(name: "Château de Montpoupon",
                          description: "Où l’on découvre la vie de château au début du XXème siècle,
                          dans les pas de Louise, la femme de chambre. S’il n’est pas hanté (a priori !),
                          la scénographie laisse à penser que ses anciens habitants sont susceptibles
                          de revenir à tout moment. Une agréable balade forestière complète la visite,
                          mais aussi un musée consacré à la vénerie.",
                          address: "Montpoupon, 37460 Céré-la-Ronde",
                          price: 1500,
                          user: User.all.sample)
castle13.photo.attach(io: img13, filename: "MONTPOUPON", content_type: 'image/jpg')

castle14 = Castle.create!(name: "Château de Gizeux",
                          description: "Patiemment entretenu et restauré par la famille de Laffon,
                          Gizeux vous réserve une très agréable visite, avec notamment sa spectaculaire galerie
                          des châteaux. De nombreuses animations sont proposées aux familles,
                          à commencer par une chasse aux trésors.",
                          address: "Le Château, 37340 Gizeux",
                          price: 1500,
                          user: User.all.sample)
castle14.photo.attach(io: img14, filename: "Chateau-de-Gizeux", content_type: 'image/jpg')

castle15 = Castle.create!(name: "Château de Champchevrier",
                          description: "Particulièrement bien meublé, le roi Louis XIII y dormit néanmoins
                          sur la paille !
                          Cet élégant château se trouve au milieu d’une grande forêt, qui au XIXème siècle,
                          abritait de nombreux loups. C’est ainsi qui est né son équipage de chasse à courre.
                          Lors de votre visite vous pourrez voir la meute des chiens,
                          issus d’un croisement entre Fox Hound anglais et Poitevins français.",
                          address: "Château de Champchevrier, 37340 Clère-les-Pins",
                          price: 1500,
                          user: User.all.sample)
castle15.photo.attach(io: img15, filename: "Chateau-de-Champchevrier", content_type: 'image/jpg')

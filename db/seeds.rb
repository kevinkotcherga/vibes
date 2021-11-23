Response.destroy_all
Question.destroy_all

question1 = Question.create(label: 'Vous êtes :', order: 1)
question2 = Question.create(label: 'Vous êtes à la recherche de :', order: 2)
question3 = Question.create(label: 'Vos amis dites de vous que vous êtes :', order: 3)
question4 = Question.create(label: "Vous êtes à la recherche d'une personne :", order: 4)
question5 = Question.create(label: 'Quels types de films préférez-vous ?', order: 5)
question6 = Question.create(label: 'Quels types de musiques préférez-vous ?', order: 6)
question7 = Question.create(label: 'Quels sont vos sports préférés ?', order: 7)
question8 = Question.create(label: 'Quels types de cuisine préférez-vous ?', order: 8)
question9 = Question.create(label: 'Quels types de littérature préférez-vous ?', order: 9)
question10 = Question.create(label: 'A quelle fréquence lisez-vous ? (toutes catégories confondues)', order: 10)
question11 = Question.create(label: "Êtes-vous intéressé par l'horoscope ?", order: 11)
question12 = Question.create(label: 'Quels sont vos hobbies ?', order: 12)
question13 = Question.create(label: 'Quels animaux préférez-vous ?', order: 13)

response1 = Response.new(label: "Femme", question_id: question1.id).save!
response2 = Response.new(label: "Homme", question_id: question1.id).save!
response3 = Response.new(label: "Non-binaire", question_id: question1.id).save!

response4 = Response.new(label: "Femme", question_id: question2.id).save!
response5 = Response.new(label: "Homme", question_id: question2.id).save!
response6 = Response.new(label: "Non-binaire", question_id: question2.id).save!

response7 = Response.new(label: "Extraverti", question_id: question3.id).save!
response8 = Response.new(label: "Introverti", question_id: question3.id).save!
response9 = Response.new(label: "Ambitieux", question_id: question3.id).save!
response10 = Response.new(label: "Sociable", question_id: question3.id).save!
response11 = Response.new(label: "Calme", question_id: question3.id).save!
response12 = Response.new(label: "Drôle", question_id: question3.id).save!
response13 = Response.new(label: "Timide", question_id: question3.id).save!
response14 = Response.new(label: "Réservé", question_id: question3.id).save!
response15 = Response.new(label: "Mélancolique", question_id: question3.id).save!
response16 = Response.new(label: "Hyperactif", question_id: question3.id).save!
response17 = Response.new(label: "Créatif", question_id: question3.id).save!
response18 = Response.new(label: "Sensible", question_id: question3.id).save!
response19 = Response.new(label: "Romantique", question_id: question3.id).save!
response20 = Response.new(label: "Cultivé", question_id: question3.id).save!

response21 = Response.new(label: "Extraverti", question_id: question4.id).save!
response22 = Response.new(label: "Introverti", question_id: question4.id).save!
response23 = Response.new(label: "Ambitieux", question_id: question4.id).save!
response24 = Response.new(label: "Sociable", question_id: question4.id).save!
response25 = Response.new(label: "Calme", question_id: question4.id).save!
response26 = Response.new(label: "Drôle", question_id: question4.id).save!
response27 = Response.new(label: "Timide", question_id: question4.id).save!
response28 = Response.new(label: "Réservé", question_id: question4.id).save!
response29 = Response.new(label: "Mélancolique", question_id: question4.id).save!
response30 = Response.new(label: "Hyperactif", question_id: question4.id).save!
response31 = Response.new(label: "Créatif", question_id: question4.id).save!
response32 = Response.new(label: "Sensible", question_id: question4.id).save!
response33 = Response.new(label: "Romantique", question_id: question4.id).save!
response34 = Response.new(label: "Cultivé", question_id: question4.id).save!

response35 = Response.new(label: "Action", question_id: question5.id).save!
response36 = Response.new(label: "Comédie", question_id: question5.id).save!
response37 = Response.new(label: "Drame", question_id: question5.id).save!
response38 = Response.new(label: "Science-fiction", question_id: question5.id).save!
response39 = Response.new(label: "Thriller", question_id: question5.id).save!
response40 = Response.new(label: "Horreur", question_id: question5.id).save!
response41 = Response.new(label: "Animé", question_id: question5.id).save!
response42 = Response.new(label: "Historique", question_id: question5.id).save!
response43 = Response.new(label: "Biographie", question_id: question5.id).save!
response44 = Response.new(label: "Documentaire", question_id: question5.id).save!

response45 = Response.new(label: "Rock", question_id: question6.id).save!
response46 = Response.new(label: "Pop", question_id: question6.id).save!
response47 = Response.new(label: "Rap", question_id: question6.id).save!
response48 = Response.new(label: "Jazz", question_id: question6.id).save!
response49 = Response.new(label: "Classique", question_id: question6.id).save!
response50 = Response.new(label: "Métal", question_id: question6.id).save!
response51 = Response.new(label: "Hip-Hop", question_id: question6.id).save!
response52 = Response.new(label: "RnB", question_id: question6.id).save!
response53 = Response.new(label: "Blues", question_id: question6.id).save!
response54 = Response.new(label: "Electro", question_id: question6.id).save!
response55 = Response.new(label: "Reggae", question_id: question6.id).save!

response56 = Response.new(label: "Football", question_id: question7.id).save!
response57 = Response.new(label: "Basketball", question_id: question7.id).save!
response58 = Response.new(label: "Rugby", question_id: question7.id).save!
response59 = Response.new(label: "Athlétisme", question_id: question7.id).save!
response60 = Response.new(label: "Volleyball", question_id: question7.id).save!
response61 = Response.new(label: "Tennis", question_id: question7.id).save!
response62 = Response.new(label: "Tennis de table", question_id: question7.id).save!
response63 = Response.new(label: "Natation", question_id: question7.id).save!
response64 = Response.new(label: "Gymnastique", question_id: question7.id).save!
response65 = Response.new(label: "Danse", question_id: question7.id).save!
response66 = Response.new(label: "Fitness", question_id: question7.id).save!
response67 = Response.new(label: "Escalade", question_id: question7.id).save!
response68 = Response.new(label: "Sports de combat", question_id: question7.id).save!
response69 = Response.new(label: "Equitation", question_id: question7.id).save!
response70 = Response.new(label: "Skate", question_id: question7.id).save!
response71 = Response.new(label: "Sports automobiles", question_id: question7.id).save!
response72 = Response.new(label: "Aucun", question_id: question7.id).save!

response73 = Response.new(label: "Asiatique", question_id: question8.id).save!
response74 = Response.new(label: "Français", question_id: question8.id).save!
response75 = Response.new(label: "Italien", question_id: question8.id).save!
response76 = Response.new(label: "Oriental", question_id: question8.id).save!
response77 = Response.new(label: "Indien", question_id: question8.id).save!
response78 = Response.new(label: "Fast-food", question_id: question8.id).save!
response79 = Response.new(label: "Africain", question_id: question8.id).save!
response80 = Response.new(label: "Russe", question_id: question8.id).save!
response81 = Response.new(label: "Mexicain", question_id: question8.id).save!

response82 = Response.new(label: "Manga", question_id: question9.id).save!
response83 = Response.new(label: "Bande dessinée", question_id: question9.id).save!
response84 = Response.new(label: "Roman d'amour", question_id: question9.id).save!
response85 = Response.new(label: "Roman policier", question_id: question9.id).save!
response86 = Response.new(label: "Roman épistolaire", question_id: question9.id).save!
response87 = Response.new(label: "Roman classique", question_id: question9.id).save!
response88 = Response.new(label: "Fantaisie", question_id: question9.id).save!
response89 = Response.new(label: "Science-fiction", question_id: question9.id).save!
response90 = Response.new(label: "Théâtre", question_id: question9.id).save!
response91 = Response.new(label: "Horreur", question_id: question9.id).save!
response92 = Response.new(label: "Nouvelle fiction", question_id: question9.id).save!

response93 = Response.new(label: "Tous les jours", question_id: question10.id).save!
response94 = Response.new(label: "2 à 3 fois par semaine", question_id: question10.id).save!
response95 = Response.new(label: "Quelques fois par mois", question_id: question10.id).save!
response96 = Response.new(label: "Quelques fois par an", question_id: question10.id).save!
response97 = Response.new(label: "Jamais", question_id: question10.id).save!

response98 = Response.new(label: "Oui", question_id: question11.id).save!
response99 = Response.new(label: "Un peu", question_id: question11.id).save!
response100 = Response.new(label: "Non", question_id: question11.id).save!

response100 = Response.new(label: "Musée", question_id: question12.id).save!
response101 = Response.new(label: "Théâtre", question_id: question12.id).save!
response102 = Response.new(label: "Opéra", question_id: question12.id).save!
response103 = Response.new(label: "Peinture", question_id: question12.id).save!
response104 = Response.new(label: "Voyage", question_id: question12.id).save!
response105 = Response.new(label: "Sortie nocturne", question_id: question12.id).save!
response106 = Response.new(label: "Cinéma", question_id: question12.id).save!
response107 = Response.new(label: "Jeux vidéo", question_id: question12.id).save!
response108 = Response.new(label: "Littérature", question_id: question12.id).save!
response109 = Response.new(label: "Sport", question_id: question12.id).save!
response110 = Response.new(label: "Série", question_id: question12.id).save!
response111 = Response.new(label: "Balade", question_id: question12.id).save!
response112 = Response.new(label: "Télévision", question_id: question12.id).save!

response113 = Response.new(label: "Chats", question_id: question13.id).save!
response114 = Response.new(label: "Chiens", question_id: question13.id).save!
response115 = Response.new(label: "Chevaux", question_id: question13.id).save!
response116 = Response.new(label: "Oiseaux", question_id: question13.id).save!
response117 = Response.new(label: "Poissons", question_id: question13.id).save!
response118 = Response.new(label: "Reptiles", question_id: question13.id).save!
response119 = Response.new(label: "Rongeurs", question_id: question13.id).save!

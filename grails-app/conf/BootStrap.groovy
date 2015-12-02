import grails.converters.XML

import javax.rmi.CORBA.Util

class BootStrap {

    String[] nomGroupe = ["Restaurants", "Hôtels", "Magasins"]
    String[][][] pointsDInterets = [[["Kamogawa","un japonais"],["Chez Pipo","La meilleure Socca"],["La Favola","A l'italienne"],["Aphrodite","Gastronomique, tout simplement"],["Pourquoi pas","Oui, pourquoi pas?"]],[["Negresco","5 étoiles"],["Hi Hôtel","Design"],["La fiancée du pirate","Pour les pirates aventuriers!"],["Villa Saint Exupéry","Petit budget"],["Hôtel Meyerbeer Beach","Encore + petits budgets"]],[["H&M","Made in Sweden"],["Zara","Made in Spain"],["Primark","A petit prix"],["Hugo Boss","Pour les Hommes"],["Pull&Bear","Young and wild and free"]]]
    String[][] utilisateurs = [["John", "Lennon", "imagine@paris.fr", "prayforparis",true], ["Michel", "Polnareff", "michel75@free.fr", "123456789",false], ["Lara", "Fabian", "lara@fabi.an", "lara",false], ["Justin", "Bieber", "bieber@just.in", "whatdoyoumean",false], ["Brad", "Pitt", "bradlebg@hotmail.com", "angelina",false], ["Nicolas", "Sarkozy", "sarkozy@repu.fr", "nicolaspresident",false]]
    String[] emplacements = ["15 rue du Boucher Irlandais", "17 rue de la mairie provencale", "154 avenue de la republique", "24 rue des amants", "15 place Garibaldi", "54 rue Arson", "12 avenue Jean Medecin", "87 boulevard Victor Hugo", "879 place Bellecour", "1 place Vendôme", "11 rue du boulanger", "71 ruelle inconnue", "31 impasse capasse", "18 rue du Gesu", "100 avenue des dieux"]
    String[] commentaires = ["Je recommande","Très bon choix","J'ai déja vu mieux","À éviter","Fuyez!"]
    ArrayList<POI> listePOI = new ArrayList<POI>()
    ArrayList<Utilisateur> listeU = new ArrayList<Utilisateur>()
    Random rand = new Random()
    def today = new Date()

    def init = { servletContext ->

        nomGroupe.eachWithIndex {  String nGroup, index ->
            def groupe = new Groupe(nom: nGroup, dateDeCreation: today)

            for(j in 0..4) {
                def poi = new POI(nom: pointsDInterets[index][j][0], description: pointsDInterets[index][j][1], emplacement: new Emplacement(adresse: emplacements[index+j]).save(flush:true,failOnError: true))
                groupe.addToPointInteret(poi)
                listePOI.add(poi)
                poi.save(flush: true, failOnError: true)
            }

            groupe.save(flush: true, failOnError: true)
        }
        utilisateurs.each { String[] nUser ->
            def user = new Utilisateur(nom: nUser[0], prenom: nUser[1], mail: nUser[2], password: (nUser[3]).encodeAsMD5(), isAdmin: nUser[4])
            listeU.add(user)
            user.save(flush: true, failOnError: true)
        }
        listePOI.each { POI item ->
            int posCom = Math.abs(rand.nextInt() % (commentaires.length) )
            int posU = Math.abs(rand.nextInt() % (listeU.size()))
            Utilisateur u = listeU.get(posU)
            def commentaire = new Commentaire(commentaire:commentaires[posCom], pointInteret: item, utilisateur: u, dateCreation: today)
            commentaire.save(flush:true, failOnError: true)
        }


    }
    def destroy = {
    }
}

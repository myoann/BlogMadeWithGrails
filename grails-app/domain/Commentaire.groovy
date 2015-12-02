/**
 * Created by Yoann on 11/16/2015.
 */
class Commentaire {
    String commentaire;
    Date dateCreation;
    static hasOne = [pointInteret:POI,utilisateur:Utilisateur];
    static belongsTo = [POI,Utilisateur];
    static constraints = {
        commentaire blank: false,size: 1..500;

    }
}


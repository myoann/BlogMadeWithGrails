/**
 * Created by Yoann on 11/16/2015.
 */
class Utilisateur {
    String nom;
    String prenom;
    String mail;
    String password;
    static hasMany = [commentaire:Commentaire, note:Note];
    String toString() { "$mail" }

    static constraints = {
        nom blank: false, size: 1..255;
        prenom blank: false,size: 1..255;
        mail email : true;
        password blank: false, password: true;
    }
}

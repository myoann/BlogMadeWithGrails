/**
 * Created by Yoann on 11/16/2015.
 */
class POI {
    String nom;
    String description;
    static hasMany = [commentaire:Commentaire, note:Note,image:Image,groupe:Groupe];
    Emplacement emplacement
    static constraints = {
        nom blank: false,size: 1..255;
        description blank: false,size: 1..255;
    }
}


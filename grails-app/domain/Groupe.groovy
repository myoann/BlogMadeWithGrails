/**
 * Created by Yoann on 11/16/2015.
 */
class Groupe {
    String nom;
    Date dateDeCreation;
    static hasMany = [pointInteret:POI,image:Image];
    static belongsTo = [POI];
    static constraints = {
        nom blank: false,size: 1..255;
        dateDeCreation blank: false;

    }
}

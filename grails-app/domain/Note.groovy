/**
 * Created by Yoann on 11/16/2015.
 */
class Note {
    String note;
    Date date;
    static hasOne = [pointInteret:POI,utilisateur:Utilisateur];
    static belongsTo = [POI,Utilisateur];
    static constraints = {
        note blank: false,size: 1..255;
    }
}

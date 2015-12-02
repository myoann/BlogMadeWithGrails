/**
 * Created by Yoann on 11/16/2015.
 */
class Image {
    String source;
    static hasMany = [groupe:Groupe,pointInteret:POI]
    static belongsTo = [Groupe,POI];
    static constraints = {
        source blank: false,size: 1..600;
    }
}

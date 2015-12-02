/**
 * Created by Yoann on 11/16/2015.
 */
class Image {
    String source;
    byte[] image;
    static hasMany = [groupe:Groupe,pointInteret:POI]
    static belongsTo = [Groupe,POI];
    static constraints = {
        source blank: false,size: 1..600;
        image(nullable: true, maxSize: 1638400);
    }
}

/**
 * Created by Yoann on 11/16/2015.
 */

class Emplacement {
    String adresse;
    static constraints = {
        adresse blank: false,size: 1..255;
    }
}

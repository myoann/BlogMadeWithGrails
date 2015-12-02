import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class FrontController {
    def doLogin = {
        def utilisateur = Utilisateur.findWhere(mail: params['email'], password: params['password'].encodeAsMD5())
        session.utilisateur = utilisateur
        if (utilisateur) {
            def idUtilisateur = utilisateur.getId()
            redirect(action: 'show', id: idUtilisateur)
        } else {
            redirect(uri: '/projet/login')
        }
    }

    def logout = {
        session.utilisateur = null
        redirect(uri: '/')
    }

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
/*_________________________________________________________________________________________________________________*/
/*___________________________________________________UTILISATEUR___________________________________________________*/
/*_________________________________________________________________________________________________________________*/
    def indexUtilisateur(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Utilisateur.list(params), model: [utilisateurInstanceCount: Utilisateur.count()]
    }

    def showUtilisateur(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    def id_user(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    def createUtilisateur() {
        respond new Utilisateur(params)
    }

    @Transactional
    def saveUtilisateur(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view: 'create'
            return
        }

        utilisateurInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
            }
            '*' { respond utilisateurInstance, [status: CREATED] }
        }
    }

    def editUtilisateur(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    @Transactional
    def updateUtilisateur(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view: 'edit'
            return
        }

        utilisateurInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
            }
            '*' { respond utilisateurInstance, [status: OK] }
        }
    }

    @Transactional
    def deleteUtilisateur(Utilisateur utilisateurInstance) {

        if (utilisateurInstance == null) {
            notFound()
            return
        }

        utilisateurInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }


/*_________________________________________________________________________________________________________________*/
/*_______________________________________________________POI_______________________________________________________*/
/*_________________________________________________________________________________________________________________*/







    def beforeInterceptor = [action: this.&checkUser, except:['index', 'list', 'show']]

    def checkUser() {
        if (!session.utilisateur) {
            // utilisateur non connecté
            redirect(controller: 'utilisateur', action: 'login')
            return false
        }
    }

    def indexPOI(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond POI.list(params), model: [POIInstanceCount: POI.count()]
    }

    def showPOI(POI POIInstance) {
        respond POIInstance
    }

    def createPOI() {
        respond new POI(params)
    }

    @Transactional
    def savePOI(POI POIInstance) {
        if (POIInstance == null) {
            notFound()
            return
        }

        if (POIInstance.hasErrors()) {
            respond POIInstance.errors, view: 'create'
            return
        }

        POIInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'POI.label', default: 'POI'), POIInstance.id])
                redirect POIInstance
            }
            '*' { respond POIInstance, [status: CREATED] }
        }
    }

    def editPOI(POI POIInstance) {
        respond POIInstance
    }

    @Transactional
    def updatePOI(POI POIInstance) {
        if (POIInstance == null) {
            notFound()
            return
        }

        if (POIInstance.hasErrors()) {
            respond POIInstance.errors, view: 'edit'
            return
        }

        POIInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'POI.label', default: 'POI'), POIInstance.id])
                redirect POIInstance
            }
            '*' { respond POIInstance, [status: OK] }
        }
    }



    def indexGroupe(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Groupe.list(params), model: [groupeInstanceCount: Groupe.count()]
    }

    def showGroupe(Groupe groupeInstance) {
        respond groupeInstance
    }

    def createGroupe() {
        respond new Groupe(params)
    }

    @Transactional
    def saveGroupe(Groupe groupeInstance) {
        if (groupeInstance == null) {
            notFound()
            return
        }

        if (groupeInstance.hasErrors()) {
            respond groupeInstance.errors, view: 'create'
            return
        }

        groupeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'groupe.label', default: 'Groupe'), groupeInstance.id])
                redirect groupeInstance
            }
            '*' { respond groupeInstance, [status: CREATED] }
        }
    }

    def editGroupe(Groupe groupeInstance) {
        respond groupeInstance
    }

    @Transactional
    def updateGroupe(Groupe groupeInstance) {
        if (groupeInstance == null) {
            notFound()
            return
        }

        if (groupeInstance.hasErrors()) {
            respond groupeInstance.errors, view: 'edit'
            return
        }

        groupeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Groupe.label', default: 'Groupe'), groupeInstance.id])
                redirect groupeInstance
            }
            '*' { respond groupeInstance, [status: OK] }
        }
    }





}

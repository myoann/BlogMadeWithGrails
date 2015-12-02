class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/custom_index")
        "/projet/login"(view:"/login")
        "/projet/front/POI/index"(view:"/front/POI/index")
        "/projet/front/groupe/index"(view:"/front/groupe/index")

        "500"(view:'/error')
	}
}

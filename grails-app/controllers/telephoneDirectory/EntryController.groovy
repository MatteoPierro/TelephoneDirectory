package telephoneDirectory

class EntryController {
	
	def scaffold = true
	
    def index() {
		render (view:'search', model:[searchresults:Entry.all])
	}
	
	private def String wrapSearchParm(value) {
		'%'+value+'%'
	}
	
	def search = {
		def queryParam = wrapSearchParm(params.searchValue)
		def list
		list = Entry.findAllByFirstNameIlikeOrLastNameIlikeOrPhoneNumberIlike(queryParam,queryParam,queryParam)
		render(template:'searchResults', model:[searchresults:list])
	}
}

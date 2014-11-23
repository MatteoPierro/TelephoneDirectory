package telephoneDirectory

class Entry {
	
	String firstName
	
	String lastName
	
	String phoneNumber

    static constraints = {
		firstName(nullable:false, blank:false)
		lastName(nullable:false, blank:false)
		phoneNumber(nullable:false, blank:false)
		phoneNumber(matches: "^\\+[0-9]+\\s[0-9]+\\s[0-9]{6,}\$")
    }
}

package telephoneDirectory

class Entry {
	
	String firstName
	
	String lastName
	
	String phoneNumber

    static constraints = {
		firstName(blank:false)
		lastName(blank:false)
		phoneNumber(matches: "^\\+[0-9]+\\s[0-9]+\\s[0-9]{6,}\$")
    }
}


chui/window/blank_page
	//var/datum/pathogen/patho = new
	//patho = new
	var/global/list/CHEMS = list( "Aluminium", "Bromine", "Copper", "Sugar", "Water")
	var/datum/pathogen/Q
	var/list/chems = list()
	name = "Blank Page"

	New()
		..()
	OnClick( var/client/who, var/id )
		if( !(id in CHEMS))
			return//??
		if( isnull( chems[ id ] ) )
			chems[ id ] = 0
		chems[ id ] += 10
	OnTopic( href, href_list[] )
		switch( href_list[ "action" ] )
			if( "remove" )
				chems[href_list[ "chem" ]] = null

	GetBody()
		var/generated = ""
		for( var/i = 1, i <= CHEMS.len, i++ )
			generated += theme.generateButton( "Button", Q.desc ) + "<br/>"

		return generated

//var/global/chui/window/blank_page/blank_page

//world/New()
	//.=..()
	//blank_page = new

/*client/verb/blank_page()
	set name = "Blank page"
	set category = "chui"
	var/datum/pathogen/P = unpool(/datum/pathogen)
	P.create_weak()
	blank_page.Q = P


	if( blank_page.IsSubscribed( src ) )
		blank_page.Unsubscribe( src )
	else
		blank_page.Subscribe( src )

*/
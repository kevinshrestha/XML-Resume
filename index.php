<?php

	require( "./models/page.php" );

	include( "./views/header.php" );

	if( !isset( $_GET["action"] ) ) {

		$action = "bio";

	} else {

		$action = $_GET["action"];

	}

	/*Controller*/

	if( $action == "bio" )
		{ LoadPage( "./data/bio.xml" ); }

	if( $action == "skills" )
		{ LoadPage( "./data/skills.xml" ); }

	if( $action == "projects" )
	{ LoadPage( "./data/projects.xml" ); }

	if( $action == "contact" )
	{ LoadPage( "./data/contact.xml" ); }


	include( "./views/footer.php" );

?>

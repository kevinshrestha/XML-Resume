<?php

	function LoadPage( $filename ) {

		$xml = new DOMDocument;
		$xml->load( $filename );

		$xsl = new DOMDocument;
		$xsl->load( "./data/transform.xsl" );

		$processor = new XSLTProcessor;
		$processor->importStyleSheet( $xsl );

		echo $processor->transformToXML( $xml );

	}

?>
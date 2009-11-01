$(document).ready( function() {
  $('#documentation pre').wrapInner('<code></code>');
  hljs.tabReplace = '    ';
  hljs.initHighlightingOnLoad('ruby');

	hookSourceViews();
	hookDebuggingToggle();
	hookQuickSearch();
	highlightLocationTarget();

	$('ul.link-list a').bind( "click", highlightClickTarget );
});


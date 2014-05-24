%% -*- mode: nitrogen -*-
%% vim: ts=4 sw=4 et
-module (news).
-compile(export_all).
-include_lib("nitrogen_core/include/wf.hrl").
-include("records.hrl").

main() -> #template { file="./site/templates/bare.html" }.

title() -> "CoBUG".

body() ->
    #container_12 { body=[
	common:header(),
        %% #grid_2 { body=sidebar() },
	#grid_2 { body=common:sidebar() },
        #grid_10 { body=inner_body() }
    ]}.

inner_body() ->
    [
	#h2 { text="News" },
	#hr{},
	#h3{ text="BSDNow interview with Brian Callahan and myself!" },
    #time{datetime="2014-05-20 16:00Z", text="May 20th at 4:00GMT"},
	#p{ body=[ 
        "The interview starts at around the 34 minute mark!",
        #br {},
        "<iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/jYs0ARQo4W8\" frameborder=\"0\" allowfullscreen></iframe>",
        #br{},
		"Be sure to check out ",
        #link{ url="http://bsdnow.tv", text="BSDNow" },
        " for more awesome BSD news!"
	]},
	#hr{},
	common:footer()
    ].

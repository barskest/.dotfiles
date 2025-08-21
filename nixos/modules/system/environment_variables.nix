{ config, pkgs, ... }:

{
	environment.variables = {
		INPUTRC = "/home/peter/.config/bash/.inputrc";
		EDITOR = "hx";
		VISUAL = "hx";
	};
}

{ config, pkgs, ... }:

{
	environment.variables = {
		EDITOR = "hx";
		VISUAL = "hx";
		INPUTRC = "/home/peter/.config/bash/.inputrc";
	};
}

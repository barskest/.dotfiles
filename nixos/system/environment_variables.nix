{ config, pkgs, ... }:

{
	environment.variables = {
		EDITOR = "hx";
		VISUAL = "hx";
	};
}

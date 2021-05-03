//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		                                                      /*Update Interval*/	/*Update Signal*/
    {"", "sh ~/programs/dwmblocks/scripts/spotify_status.sh",                               10,                   12},
    {"", "sh ~/programs/dwmblocks/scripts/connman_connection.sh",                           30,                   0},
    {"RAM ", "printf '%.1f%%' $(free -t | awk '/^Total/ { x=$3; y=$2; printf x/y*100}')",   30,                   0},
    {"", "printf '/: %s' $(df -t xfs | grep '/$' | awk '{print $5}')",                      60,                   0},
    {"", "date '+%b %d. %a %H:%M:%S'",                                                      5,                    0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 3;

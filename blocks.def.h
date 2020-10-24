//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		                                                      /*Update Interval*/	/*Update Signal*/
    {"", "sh ~/programs/dwmblocks/scripts/connman_connection.sh",                     30,                   0},
    {"RAM ", "printf '%.2f%%' $(free | awk '/^Mem/ { x=$3; y=$7; printf x/y*100}')",  30,                   0},
    {"DISK ", "df -t ext4 | grep '/' | awk '{print $5}'",                             60,		            0},
	{"BAT ", "acpi -b | awk '{ print $4 $5 }' | sed 's/,/ /g'",                       30,		            0},
	{"ALSA ", "sh ~/programs/dwmblocks/scripts/alsa_status.sh",                       0,		            10},
	{"LIGHT ", "printf '%.0f%%' $(xbacklight)",                                       0,		            11},
	{"", "date '+%b %d. %a %H:%M:%S'",					                              5,            		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 3;

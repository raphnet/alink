#include <string.h>
#include <ctype.h>
#include "strupr.h"

char *strupr(char *str)
{
	char *p = str;

	while (*p) {
		*p = toupper(*p);
		p++;
	}

	return str;
}

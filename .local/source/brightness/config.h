#pragma once
#include <iostream>


/* Directory of the device */
const std::string DIRECTORY = "/sys/class/backlight/intel_backlight/";

/* Set default value for increading and decreasing the brightness. */
const int DEFAULT_CHANGE = 200;

/* Set threshold for lowest brightness. */
const int MIN_THRESHOLD = 50;

/* Set threshold for highest brightness.
 * Leave 0 for highest brightness
 *
 * NOTE: if you set it higher then the max_brightness (max_brightness
 * can be found in /sys/class/backlight/<device>/max_brightness)
 * it will use the max_brightness value */
const int MAX_THRESHOLD = 0;

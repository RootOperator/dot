#include <iostream>
#include <fstream>
#include <string>

#include "config.h"


using namespace std;

int read_file(string file) {
    ifstream fs (DIRECTORY + file);
    string contents;

    if (fs.is_open()) {
        getline(fs, contents);
    } else {
        contents = "-1";
    }
    
    fs.close();
    return stoi(contents);
}

void update_brightness(int brightness) {
    ofstream fs (DIRECTORY + "brightness");

    if (fs.is_open()) {
        fs << brightness;
    }

    fs.close();
}


int main(int arc, char *argv[]) {
    int new_brightness;
    int change_value = DEFAULT_CHANGE;
    int brightness = read_file("brightness");
    int max_brightness = read_file("max_brightness");

    if (MAX_THRESHOLD != 0 && MAX_THRESHOLD > 0 && MAX_THRESHOLD < max_brightness) {
        max_brightness = MAX_THRESHOLD;
    }

    if (arc >= 3) {
        change_value = stoi(argv[2]);
    }

    if (arc >= 2) {
        string arg = argv[1];
        if(arg == "-inc") {
            new_brightness = brightness + change_value;
        }
        if (arg == "-dec") {
            new_brightness = brightness - change_value; 
        }
        if (arg == "-set") {
            if (arc >= 3) {
                new_brightness = stoi(argv[2]);
            } else {
                cerr << "-set expects an argument" << endl;
                return 1;
            }
        }

        if (new_brightness < MIN_THRESHOLD) {
            new_brightness = MIN_THRESHOLD;
        }
        if (new_brightness > max_brightness) {
            new_brightness = max_brightness;
        }

        update_brightness(new_brightness);
    } else {
        cerr << "Brightness excpects an argument" << endl;
    }
    return 0;
}


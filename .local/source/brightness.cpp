#include <iostream>
#include <unistd.h>
#include <fstream>
#include <string>

// I KNOW IT'S SCUFFED

int main(int arc, char *argv[]) {
    using namespace std;
    string dir = "/sys/class/backlight/intel_backlight";
    ifstream fileStream;
    
    fileStream.open(dir + "/brightness");

    string max_brightness;
    int brightness;
    int new_brightness;
    int increment = 200;

    if (fileStream.is_open()) {
        string n;
        fileStream >> n;
        brightness = stoi(n);
        fileStream.close();
        fileStream.open(dir +"/max_brightness");
        
        if (fileStream.is_open()) {
            fileStream >> max_brightness;
            fileStream.close();
        }
    }

    if (arc >= 3) {
        increment = stoi(argv[2]);
    }

    if (arc >= 2) {
        string arg = argv[1];
        if (arg == "-dec"){
            new_brightness = brightness - increment;
        } else if (arg == "-inc") {
            new_brightness = brightness + increment;
        } else if (arg == "-set") {
            if (arc >= 3) {
                new_brightness = stoi(argv[2]);
            } else {
                cout << "-set takes a integer between 0/" + max_brightness << endl;
            }
        }

        if (new_brightness < 0) {
            new_brightness = 50;
        } else if (new_brightness > stoi(max_brightness)) {
            new_brightness = stoi(max_brightness);
        }

        ofstream fs (dir + "/brightness");
        fs << new_brightness;
        fs.close();
    } else {
        cout << "brightness takes an agument" << endl;
    }
     
    return 0;
}



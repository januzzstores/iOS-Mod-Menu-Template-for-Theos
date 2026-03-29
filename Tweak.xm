#import <Foundation/Foundation.h>
#import <stdint.h>

// v2.122.1 No Recoil Offset: 0x42A1BC8
// මේකෙන් ගන් එක ගැස්සෙන එක නවත්තනවා
void patch_no_recoil(bool enable) {
    // 0x42A1BC8 තමයි අපි හොයාගත්ත ලිපිනය
    uintptr_t address = 0x42A1BC8; 
    if (enable) {
        // No Recoil ON කරන Hex කේතය
        *(uint32_t *)address = 0xE3A00000; 
    }
}

// මෙනු එකේ ස්විච් එක එබුවම වෙන දේ
extern "C" void switchChanged(NSString *title, BOOL isOn) {
    if ([title isEqualToString:@"No Recoil"]) {
        patch_no_recoil(isOn);
    }
}
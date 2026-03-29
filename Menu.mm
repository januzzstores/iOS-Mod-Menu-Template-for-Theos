#import <Foundation/Foundation.h>

// මෙනු එකේ Header එක
#define MENU_TITLE @"JaNuzz Mod Menu"
#define MENU_SUBTITLE @"Free Fire MAX v2.122.1"

// බටන් එක එකතු කිරීම
- (void)setupMenu {
    [self addSwitch:@"No Recoil" description:@"තුවක්කුව ගැස්සෙන්නේ නැත."];
}

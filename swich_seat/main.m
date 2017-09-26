//
//  main.m
//  swich_seat
//
//  Created by Student 01 on 28/08/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "facility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
        facility *f=[[facility alloc]init];
        int ch;
        char seat[10];
        NSString *seatNo;
        while(1)
        {
        NSLog(@"1:Book seat");
        NSLog(@"2: Display Avail the seat");
        NSLog(@"Enter your choice");
        scanf("%d",&ch);
        switch(ch)
        {
            case 1:
                NSLog(@"Enter seatNo to book");
                scanf("%s",seat);
                seatNo=[f encode:seat];
                [f book_seatForseatNo:seatNo];
                break;
            case 2:
                [f display_availble_seats];
                break;
            default:NSLog(@"Wrong choice");
                exit(0);
        }
            
        }
        
    }
    return 0;
}

//
//  facility.h
//  swich_seat
//
//  Created by Student 01 on 28/08/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface facility : NSObject
@property NSMutableArray *seatnos;
-(void)book_seatForseatNo:(NSString *)seatNo;
-(void)display_availble_seats;
-(NSString *)encode:(char *)seat;

@end

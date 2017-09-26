//
//  facility.m
//  swich_seat
//
//  Created by Student 01 on 28/08/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "facility.h"

@implementation facility
-(instancetype)init
{
    self=[super init];
    if(self)
    {
        self.seatnos=[[NSMutableArray alloc]initWithObjects:@"SEAT1",@"SEAT2",@"SEAT3",@"SEAT4", @"SEAT5",@"SEAT6",nil];
    }
    return self;
}
-(void)book_seatForseatNo:(NSString *)seatNo
{
    if([self.seatnos containsObject:seatNo])
    {
        [self.seatnos removeObject:seatNo];
        NSLog(@"%@ is booked now!!",seatNo);
    }
    else
    {
        NSLog(@"%@ is already booked",seatNo);
    }
    NSLog(@"Now the avail seats are:%@",self.seatnos);
}
-(NSString *)encode:(char *)seat
{
    NSString *seatNo=[NSString stringWithUTF8String:seat];
    return seatNo;
}
-(void)display_availble_seats
{
    NSLog(@"%@",self.seatnos);
}



@end

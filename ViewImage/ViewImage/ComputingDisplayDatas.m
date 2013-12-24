//
//  ComputingDisplayDatas.m
//  ViewImage
//
//  Created by masuimasanori on 2013/12/24.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import "ComputingDisplayDatas.h"

@implementation ComputingDisplayDatas
- (NSString *) getTimeNow {
    NSDate *dateNow = [NSDate date];
    NSDateFormatter *formatNowDate = [[NSDateFormatter alloc] init];
    [formatNowDate setDateFormat:DATE_FORMAT_NOW];
    
    return [formatNowDate stringFromDate:dateNow];
}
@end

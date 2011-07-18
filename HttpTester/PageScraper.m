//
//  PageScraper.m
//  HttpTester
//
//  Created by user1 on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PageScraper.h"

@implementation PageScraper

+(NSString *)requestPageWithString:(NSString *)url{
    NSURL *theUrl = [NSURL URLWithString:url];
    NSURLRequest *theRequest = [NSURLRequest requestWithURL:theUrl];
    NSURLResponse *theResponse;
    NSError *error = [[NSError alloc] init];
    NSData *theData = [NSURLConnection sendSynchronousRequest:theRequest returningResponse:&theResponse error:&error];
    if (theData){
        return [[NSString alloc] initWithData:theData encoding:NSUTF8StringEncoding];  
    } else{
        return [error description];
    }
}

@end

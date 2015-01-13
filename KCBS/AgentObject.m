//
//  AgentObject.m
//  KCBS
//
//  Created by YK Software Solutions on 24/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "AgentObject.h"

@implementation AgentObject
- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary {
    if(self = [self init]) {
        // Assign all properties with keyed values from the dictionary
        _agentName = [jsonDictionary objectForKey:@"agentName"];
        _password = [jsonDictionary objectForKey:@"password"];
        _numberOfCompletedVisits = [jsonDictionary objectForKey:@"numberOfCompletedVisits"];
        _numberOfPendingVisits= [jsonDictionary objectForKey:@"numberOfPendingVisits"];
        _amountRecovered = [jsonDictionary objectForKey:@"amountRecovered"];
        _recoveryBonus = [jsonDictionary objectForKey:@"recoveryBonus"];
           }
    
    return self;
}















@synthesize stragentName;
@synthesize stramountRecovered;
@synthesize strnumberOfCompletedVisits;
@synthesize strnumberOfPendingVisits;
@synthesize strpassword;
@synthesize strrecoveryBonus;

@end

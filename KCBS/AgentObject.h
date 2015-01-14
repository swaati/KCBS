    //
    //  AgentObject.h
    //  KCBS
    //
    //  Created by YK Software Solutions on 24/12/14.
    //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
    //

    #import <Foundation/Foundation.h>

    @interface AgentObject : NSObject
    - (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary;
    @property (nonatomic,strong) NSString *agentName;
    @property (nonatomic,strong) NSString *password;
    @property (nonatomic,strong) NSNumber *numberOfCompletedVisits;
    @property (nonatomic,strong) NSNumber *numberOfPendingVisits;
    @property (nonatomic,strong) NSString *amountRecovered;
    @property (nonatomic,strong) NSString *recoveryBonus;

    //




    @property(nonatomic,strong) NSString *stragentName;
    @property(nonatomic,strong) NSString *stramountRecovered;
    @property(nonatomic,strong) NSString *strnumberOfCompletedVisits;
    @property(nonatomic,strong) NSString *strnumberOfPendingVisits;
    @property(nonatomic,strong) NSString *strpassword;
    @property(nonatomic,strong) NSString *strrecoveryBonus;
    @end

//
//  MGDStarshipController.h
//  SWAPIDevMountainObj-C
//
//  Created by Kelly Johnson on 6/28/18.
//  Copyright © 2018 Leme Group. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGDStarship.h"


@interface MGDStarshipController : NSObject

#pragma shared instance

+ (instancetype)sharedInstance;

#pragma GET

- (void) fetchMGDStarships: (void(^)(NSArray<MGDStarship *> *starships, NSError *error))completion;

@end

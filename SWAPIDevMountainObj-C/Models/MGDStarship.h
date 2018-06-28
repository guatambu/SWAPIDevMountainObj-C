//
//  Starship.h
//  SWAPIDevMountainObj-C
//
//  Created by Kelly Johnson on 6/28/18.
//  Copyright © 2018 Leme Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MGDStarship : NSObject

#pragma Properties

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *model;
@property (nonatomic, copy)NSString *manufacturer;
@property (nonatomic, copy)NSString *costInCredits;
@property (nonatomic, copy)NSString *length;
@property (nonatomic, copy)NSString *maxAtmospheringSpeed;
@property (nonatomic, copy)NSString *crew;
@property (nonatomic, copy)NSString *passengers;
@property (nonatomic, copy)NSString *cargoCapacity;
@property (nonatomic, copy)NSString *consumables;
@property (nonatomic, copy)NSString *hyperdriveRating;
@property (nonatomic, copy)NSString *MGLT;
@property (nonatomic, copy)NSString *starshipClass;

#pragma Initializer

- (instancetype)initWithName:(NSString *)name
                       model:(NSString *)model
                manufacturer:(NSString *)manufacturer
               costInCredits:(NSString *)costInCredits
                      length:(NSString *)length
        maxAtmospheringSpeed:(NSString *)maxAtmospheringSpeed
                        crew:(NSString *)crew
                  passengers:(NSString *)passengers
               cargoCapacity:(NSString *)cargoCapacity
                 consumables:(NSString *)consumables
            hyperdriveRating:(NSString *)hyperdriveRating
                        MGLT:(NSString *)MGLT
               starshipClass:(NSString *)starshipClass;

#pragma JSON Dictionary Initializer

- (instancetype)initWithSWAPIJSONDictionary:(NSDictionary *)dictionary;

@end


















//
//  Starship.m
//  SWAPIDevMountainObj-C
//
//  Created by Kelly Johnson on 6/28/18.
//  Copyright © 2018 Leme Group. All rights reserved.
//

#import "MGDStarship.h"

@implementation MGDStarship

#pragma Initializer

- (instancetype)initWithName:(NSString *)name model:(NSString *)model manufacturer:(NSString *)manufacturer costInCredits:(NSString *)costInCredits length:(NSString *)length maxAtmospheringSpeed:(NSString *)maxAtmospheringSpeed crew:(NSString *)crew passengers:(NSString *)passengers cargoCapacity:(NSString *)cargoCapacity consumables:(NSString *)consumables hyperdriveRating:(NSString *)hyperdriveRating MGLT:(NSString *)MGLT starshipClass:(NSString *)starshipClass
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _model = [model copy];
        _manufacturer = [manufacturer copy];
        _costInCredits = [costInCredits copy];
        _length = [length copy];
        _maxAtmospheringSpeed = [maxAtmospheringSpeed copy];
        _crew = [crew copy];
        _passengers = [passengers copy];
        _cargoCapacity = [cargoCapacity copy];
        _consumables = [consumables copy];
        _hyperdriveRating = [hyperdriveRating copy];
        _MGLT = [MGLT copy];
        _starshipClass = [starshipClass copy];
    }
    return self;
}

#pragma JSON Dictionary Initializer

- (instancetype)initWithSWAPIJSONDictionary:(NSDictionary *)dictionary
{
    
    // take the returned JSON and parse it using the private keys created below to then take those values and create the MGDStarship object via the memberwise initializer created above.
    
    
        NSString *name = dictionary[[MGDStarship nameKey]];
        NSString *model = dictionary[[MGDStarship modelKey]];
        NSString *manufacturer = dictionary[[MGDStarship manufacturerKey]];
        NSString *costInCredits = dictionary[[MGDStarship costInCreditsKey]];
        NSString *length = dictionary[[MGDStarship lengthKey]];
        NSString *maxAtmospheringSpeed = dictionary[[MGDStarship maxAtmospheringSpeedKey]];
        NSString *crew = dictionary[[MGDStarship crewKey]];
        NSString *passengers = dictionary[[MGDStarship passengersKey]];
        NSString *cargoCapacity = dictionary[[MGDStarship cargoCapacityKey]];
        NSString *consumables = dictionary[[MGDStarship consumablesKey]];
        NSString *hyperdriveRating = dictionary[[MGDStarship hyperdriveRatingKey]];
        NSString *MGLT = dictionary[[MGDStarship MGLTKey]];
        NSString *starshipClass = dictionary[[MGDStarship starshipClassKey]];
    
    
    
//    NSDictionary *resultsdDictionary = dictionary[[MGDStarship resultsKey]];
    
//    NSString *name = resultsdDictionary[[MGDStarship nameKey]];
//    NSString *model = resultsdDictionary[[MGDStarship modelKey]];
//    NSString *manufacturer = resultsdDictionary[[MGDStarship manufacturerKey]];
//    NSString *costInCredits = resultsdDictionary[[MGDStarship costInCreditsKey]];
//    NSString *length = resultsdDictionary[[MGDStarship lengthKey]];
//    NSString *maxAtmospheringSpeed = resultsdDictionary[[MGDStarship maxAtmospheringSpeedKey]];
//    NSString *crew = resultsdDictionary[[MGDStarship crewKey]];
//    NSString *passengers = resultsdDictionary[[MGDStarship passengersKey]];
//    NSString *cargoCapacity = resultsdDictionary[[MGDStarship cargoCapacityKey]];
//    NSString *consumables = resultsdDictionary[[MGDStarship consumablesKey]];
//    NSString *hyperdriveRating = resultsdDictionary[[MGDStarship hyperdriveRatingKey]];
//    NSString *MGLT = resultsdDictionary[[MGDStarship MGLTKey]];
//    NSString *starshipClass = resultsdDictionary[[MGDStarship starshipClassKey]];
    
    return [self initWithName:name model:model manufacturer:manufacturer costInCredits:costInCredits length:length maxAtmospheringSpeed:maxAtmospheringSpeed crew:crew passengers:passengers cargoCapacity:cargoCapacity consumables:consumables hyperdriveRating:hyperdriveRating MGLT:MGLT starshipClass:starshipClass];
}


#pragma Private JSON Keys

#pragma base level object Key

+ (NSString *)resultsKey
{
    return @"results";
}

#pragma desired nested JSON Keys

+ (NSString *)nameKey
{
    return @"name";
}

+ (NSString *)modelKey
{
    return @"model";
}

+ (NSString *)manufacturerKey
{
    return @"manufacturer";
}

+ (NSString *)costInCreditsKey
{
    return @"cost_in_credits";
}

+ (NSString *)lengthKey
{
    return @"length";
}

+ (NSString *)maxAtmospheringSpeedKey
{
    return @"max_atmosphering_speed";
}

+ (NSString *)crewKey
{
    return @"crew";
}

+ (NSString *)passengersKey
{
    return @"passengers";
}

+ (NSString *)cargoCapacityKey
{
    return @"cargo_capacity";
}

+ (NSString *)consumablesKey
{
    return @"consumables";
}

+ (NSString *)hyperdriveRatingKey
{
    return @"hyperdrive_rating";
}

+ (NSString *)MGLTKey
{
    return @"MGLT";
}

+ (NSString *)starshipClassKey
{
    return @"starship_class";
}

@end
















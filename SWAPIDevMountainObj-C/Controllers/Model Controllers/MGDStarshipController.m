//
//  MGDStarshipController.m
//  SWAPIDevMountainObj-C
//
//  Created by Kelly Johnson on 6/28/18.
//  Copyright © 2018 Leme Group. All rights reserved.
//

#import "MGDStarshipController.h"
#import "MGDStarship.h"


#pragma static properties for controller

static NSString *baseURLAsString = @"//swapi.co/api/";
static NSString *starships = @"starships";
static NSString *format = @"format";
static NSString *jsonString = @"json";
static NSString *page = @"page";
static NSString *two = @"2";

static NSString *uberURLAsString = @"https://swapi.co/api/starships/?format=json&page=2";

@implementation MGDStarshipController

#pragma Shared Instance

+ (instancetype)sharedInstance
{
    static MGDStarshipController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [MGDStarshipController new];
    });
    return sharedInstance;
}

#pragma GET

- (void)fetchMGDStarships:(void (^)(NSArray<MGDStarship *> *, NSError *))completion
{
//    NSURL *baseURL = [NSURL URLWithString:baseURLAsString];
//    baseURL = [baseURL URLByAppendingPathExtension:starships];
    
    NSURL *uberURL = [NSURL URLWithString:uberURLAsString];
    
//    NSURLComponents *components = [[NSURLComponents alloc] init];
//
//    components.scheme = @"https";
//    components.host = baseURLAsString;
//    components.path = starships;
//
//    NSURLQueryItem *jsonQuery = [NSURLQueryItem queryItemWithName:format value:jsonString];
//    NSURLQueryItem *pageQuery = [NSURLQueryItem queryItemWithName:page value:two];
//    NSArray *queryItems = [NSArray arrayWithObjects:jsonQuery, pageQuery, nil];
//    components.queryItems = queryItems;
//
//    NSURL *ourURL = components.URL;
//    NSLog(ourURL.absoluteString);
    
    // i have to get my URL together, building it from a string with the apporopriate compenents and extensions.  from there, i create a data task, and within that i check for the error, if error print a NSLog statement complete with nil, and return.  then check for the data to be valid, if not valid then print NSLog, complete with nil and return.  with valid data, then serialize it with JSONSerialization?  i need to parse the ra JSon for the "results" dictionary, and then use the json to create the object via the dictionary convenience intializer i created which i complete with and exit the funciton.
    
    // https://swapi.co/api/starships/?format=json&page=2
    // baseURLASSting = https://swapi.co/api/
    // extension = starships
    // query items = [( key: format , value: json), (key: page , value: 2)]
    
    [[NSURLSession sharedSession] dataTaskWithURL:uberURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            NSLog(@"there was an error > MGDStarshipController line 71: %", error.localizedDescription);
            return completion(nil, error);
        }
        
        if (!data) {
            NSLog(@"there is no data > MGDStarshipController line 76");
            return completion(nil, error);
        }
        
        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        
        if (!jsonDictionary || ![jsonDictionary isKindOfClass:[NSDictionary class]]) {
            NSLog(@"NOOOOOOOOOOOOOOOOOOO!!");
            return completion(nil, error);
        }
        
        NSArray *resultsArray = jsonDictionary[@"results"];
        
        NSMutableArray *starshipsArray = [NSMutableArray array];
        
        for (NSDictionary *starshipDictionary in resultsArray) {
            MGDStarship *newStarship = [[MGDStarship alloc] initWithSWAPIJSONDictionary:starshipDictionary];
            [starshipsArray addObject:newStarship];
        }
        completion(starshipsArray, nil);
    }].resume;
    
}

@end







































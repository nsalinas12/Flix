//
//  Movie.m
//  Flix
//
//  Created by Nico Salinas on 7/2/18.
//  Copyright © 2018 Nico Salinas. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    self.title = dictionary[@"title"];
    self.synopsis = dictionary[@"overview"];
    self.posterUrl = dictionary[@"poster_path"];
    
    return self;
}

+ (id)moviesWithDictionaries:(NSArray *)dictionaries; {
   
    NSMutableArray *returnArray = [NSMutableArray alloc ];
    
    for (NSDictionary *dictionary in dictionaries) {
        Movie *movie = [[Movie alloc] initWithDictionary:dictionary];
        
        [returnArray addObject:movie];
    }
    
    return returnArray;
}

@end

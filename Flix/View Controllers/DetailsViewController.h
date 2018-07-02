//
//  DetailsViewController.h
//  Flix
//
//  Created by Nico Salinas on 6/28/18.
//  Copyright © 2018 Nico Salinas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface DetailsViewController : UIViewController

@property (nonatomic, strong) NSDictionary *movieDictionary;
@property (weak, nonatomic) Movie *movie;

@end

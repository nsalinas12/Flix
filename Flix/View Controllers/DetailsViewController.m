//
//  DetailsViewController.m
//  Flix
//
//  Created by Nico Salinas on 6/28/18.
//  Copyright © 2018 Nico Salinas. All rights reserved.
//


#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backdropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *genreLabel;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateLabel;


@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *baseURLString = @"https://image.tmdb.org/t/p/original";
    NSString *posterURLString = self.movie[@"poster_path"];
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    [self.posterView setImageWithURL:posterURL];
    
    [self fetchGenre];
    
    NSString *backdropURLString = self.movie[@"backdrop_path"];
    NSString *fullBackdropURLString = [baseURLString stringByAppendingString:backdropURLString];
    NSURL *backdropURL = [NSURL URLWithString:fullBackdropURLString];
    [self.backdropView setImageWithURL:backdropURL];
    
    
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"overview"];
    [self.titleLabel sizeToFit];
    [self.synopsisLabel sizeToFit];
    
    CGFloat maxHeight = self.synopsisLabel.frame.origin.y  + self.synopsisLabel.frame.size.height + 30;
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width, maxHeight);
    
}

- (void) fetchGenre {
    
     NSNumber *originalGenreID = self.movie[@"genre_ids"][0];
    
    NSDictionary *globalGenreDictionary = @{ @28 : @"Action", @12 : @"Adventure", @16 : @"Animation", @35 :  @"Comedy", @80 : @"Crime", @99 : @"Documentary", @18 : @"Drama", @10751 : @"Family", @14 : @"Fantasy", @36 : @"History", @27 : @"Horror", @10402 : @"Music", @9648 : @"Mystery", @10749 : @"Romance", @878 : @"Science Fiction", @10770 : @"TV Movie", @53 : @"Thriller", @10752 : @"War", @37 : @"Western"};
    
    NSString *genreLabelText = globalGenreDictionary[originalGenreID];
    
    self.genreLabel.text = genreLabelText;
    
}

- (void) fetchReleaseDate {
    
    NSString *unformattedReleaseDate = self.movie[@"release_date"];
    
    self.releaseDateLabel = unformattedReleaseDate;
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

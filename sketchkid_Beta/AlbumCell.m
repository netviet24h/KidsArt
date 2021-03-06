//
//  AlbumCell.m
//  kidsArt
//
//  Created by Andrea Terzani on 08/08/12.
//  Copyright (c) 2012 Andrea Terzani. All rights reserved.
//

#import "AlbumCell.h"

@implementation AlbumCell
@synthesize nameLabel;
@synthesize countLabel;
@synthesize copertinaImage;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

    
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)initWithAlbum:(Album *)album
{
    [nameLabel setText:album.titolo];
    
    [countLabel setText:[NSString stringWithFormat:@"%d",[album.album2sketch count] ]];
    
    if ([album.album2sketch count]>0) {
    
        Sketch *copertina = [[album.album2sketch allObjects]objectAtIndex:0];
        NSData *data = [[NSData alloc] initWithContentsOfFile:copertina.pathSmall];
        UIImage *currentSketch = [[UIImage alloc] initWithData:data];
        [copertinaImage setImage:currentSketch];
    }
}

@end

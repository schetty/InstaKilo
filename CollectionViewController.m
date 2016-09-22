//
//  CollectionViewController.m
//  InstaKilo
//
//  Created by naomi schettini on 2016-09-21.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "PhotoCollection.h"
#import "HeaderCollectionReusableView.h"

@interface CollectionViewController ()

@property (nonatomic) PhotoCollection *photoCollection;
@property (nonatomic) NSMutableDictionary <NSString*,NSMutableArray<Photo*>*> *photoCollectionBySections;
@property (nonatomic) NSMutableDictionary <NSString*,NSMutableArray<Photo*>*> *photoCollectionsBySubject
;
@property (nonatomic) NSMutableArray *panamaPhotos;
@property (nonatomic) NSMutableArray *ethiopiaPhotos;
@property (nonatomic) NSMutableArray *beachPhotos;
@property (nonatomic) NSMutableArray *icelandPhotos;
@property (nonatomic) NSMutableArray *unknownPhotos;
@property (nonatomic) NSMutableArray *bcPhotos;
@property (nonatomic) NSMutableArray *hawaiiPhotos;
@property (nonatomic) NSMutableArray *southAfricaPhotos;
@property (nonatomic) NSMutableArray *waterPhotos;
@property (nonatomic) NSMutableArray *animalPhotos;
@property (nonatomic) NSMutableArray *travelPhotos;
@property (nonatomic) NSMutableArray *portraitPhotos;
@property (nonatomic) NSMutableArray *plantPhotos;

@property BOOL isBySubject;



@property (nonatomic) NSArray *arrayOfKeys;
@property (nonatomic) NSArray *arrayOfSubjectKeys;




@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";


- (void)viewDidLoad {
    [super viewDidLoad];
    self.isBySubject = YES;
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

   _photoCollection = [[PhotoCollection alloc]init];
    
//    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithTitle:@"Location" style:UIBarButtonItemStylePlain target:self action:@selector(locationButtonPressed:)];
//    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"Title"];
//    item.rightBarButtonItem = rightButton;
//    item.hidesBackButton = YES;
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Location"
                                                                    style:UIBarButtonItemStyleDone target:self action:@selector(subjectButtonPressed:)];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"Subject"
                                                                    style:UIBarButtonItemStyleDone target:self action:@selector(locationButtonPressed:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.leftBarButtonItem = leftButton;
    
    _panamaPhotos = [[NSMutableArray alloc] init];
    _ethiopiaPhotos = [[NSMutableArray alloc] init];
    _beachPhotos = [[NSMutableArray alloc]init];
    _unknownPhotos = [[NSMutableArray alloc]init];
    _icelandPhotos = [[NSMutableArray alloc]init];
    _bcPhotos = [[NSMutableArray alloc]init];
    _hawaiiPhotos = [[NSMutableArray alloc]init];
    _southAfricaPhotos = [[NSMutableArray alloc] init];
    _waterPhotos = [[NSMutableArray alloc]init];
    _plantPhotos = [[NSMutableArray alloc] init];
    _animalPhotos = [[NSMutableArray alloc] init];
    _travelPhotos = [[NSMutableArray alloc] init];
    _portraitPhotos = [[NSMutableArray alloc] init];
    
    for (Photo *photo in _photoCollection.photosArray) {
       
        if ([photo.location isEqualToString:@"Panama"]) {
            [_panamaPhotos addObject:photo];
        }
        if ([photo.location isEqualToString:@"Ethiopia"]) {
            [_ethiopiaPhotos addObject:photo];
        }
        if ([photo.location isEqualToString:@"The Beach"]) {
            [_beachPhotos addObject:photo];
        }
        if ([photo.location isEqualToString:@"Iceland"]) {
            [_icelandPhotos addObject:photo];
        }
        if ([photo.location isEqualToString:@"BC"]) {
            [_bcPhotos addObject:photo];
        }
        if ([photo.location isEqualToString:@"Unknown"]) {
            [_unknownPhotos addObject:photo];
        }
        if ([photo.location isEqualToString:@"South Africa"]) {
            [_southAfricaPhotos addObject:photo];
        }
    
        if ([photo.location isEqualToString:@"Hawaii"]) {
            [_hawaiiPhotos addObject:photo];
        }
        if ([photo.subject isEqualToString:@"Animals"]) {
            [_animalPhotos addObject:photo];
        }
        if ([photo.subject isEqualToString:@"Plants"]) {
            [_plantPhotos addObject:photo];
        }
        if ([photo.subject isEqualToString:@"Travel"]) {
            [_travelPhotos addObject:photo];
        }
        if ([photo.subject isEqualToString:@"Portrait"]) {
            [_portraitPhotos addObject:photo];
        }
        
        if ([photo.subject isEqualToString:@"Water"]) {
            [_waterPhotos addObject:photo];
        }
        
    }
    
    
    _photoCollectionBySections = [NSMutableDictionary dictionaryWithCapacity:8];
    [_photoCollectionBySections setObject:_panamaPhotos forKey:@"Panama"];
    [_photoCollectionBySections setObject:_ethiopiaPhotos forKey:@"Ethiopia"];
    [_photoCollectionBySections setObject:_beachPhotos forKey:@"The Beach"];
    [_photoCollectionBySections setObject:_icelandPhotos forKey:@"Iceland"];
    [_photoCollectionBySections setObject:_bcPhotos forKey:@"BC"];
    [_photoCollectionBySections setObject:_unknownPhotos forKey:@"Unknown"];
    [_photoCollectionBySections setObject:_southAfricaPhotos forKey:@"South Africa"];
    [_photoCollectionBySections setObject:_hawaiiPhotos forKey:@"Hawaii"];

    self.photoCollectionsBySubject = [NSMutableDictionary dictionaryWithCapacity:5];
    [self.photoCollectionsBySubject setObject:_animalPhotos forKey:@"Animal"];
    [self.photoCollectionsBySubject setObject:_plantPhotos forKey:@"Plants"];
    [self.photoCollectionsBySubject setObject:_travelPhotos forKey:@"Travel"];
    [self.photoCollectionsBySubject setObject:_waterPhotos forKey:@"Water"];
    [self.photoCollectionsBySubject setObject:_portraitPhotos forKey:@"Portrait"];
    
    
    _arrayOfSubjectKeys = [self.photoCollectionsBySubject allKeys];
    _arrayOfKeys = [_photoCollectionBySections allKeys];
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
//    NSMutableSet *set = [[NSMutableSet alloc] init];
//    
//    for (Photo *photo in _photoCollection.photosArray) {
//        
//        [set addObject:photo.location];
//        
//    }
    
    
    if (self.isBySubject)
        return self.photoCollectionBySections.count;
    else
        return self.photoCollectionsBySubject.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    if (self.isBySubject)
        return self.photoCollectionBySections[self.arrayOfKeys[section]].count;
    else
        return self.photoCollectionsBySubject[self.arrayOfSubjectKeys[section]].count;
    
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor blackColor];
    

    
    if (self.isBySubject)
    {
    cell.imageView.image = self.photoCollectionBySections[self.arrayOfKeys[indexPath.section]][indexPath.item].photo;
    }
    else
    {
        cell.imageView.image = self.photoCollectionsBySubject[self.arrayOfSubjectKeys[indexPath.section]][indexPath.item].photo;
    }
    
    //UIImage *test = self.photoCollection.photosArray[indexPath];
    
//    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"subject" ascending:YES];
//   [self.photoCollection.photosArray[indexPath.row] sortUsingDescriptors:@[descriptor]];
//        Photo *test = self.photoCollection.photosArray[indexPath.row];
//        cell.imageView.image = test.photo;

    return cell;
}


-(UICollectionReusableView *) collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"headerView" forIndexPath:indexPath];
        if (self.isBySubject)
        {
        [headerView.sectionLabel setText:self.arrayOfKeys[indexPath.section]];
        }
        else
        {
            [headerView.sectionLabel setText:self.arrayOfSubjectKeys[indexPath.section]];

        }
        return headerView;
    }
    return nil;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/







- (IBAction)locationButtonPressed:(UIBarButtonItem *)sender {
    self.isBySubject = NO;
    [self.collectionView reloadData];
    
}

- (IBAction)subjectButtonPressed:(UIBarButtonItem *)sender {
    self.isBySubject = !self.isBySubject;
    [self.collectionView reloadData];
}
@end

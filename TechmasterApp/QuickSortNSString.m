//
//  QuickSortNSString.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/19/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "QuickSortNSString.h"

@interface QuickSortNSString ()
{
    NSString *chuoi;
    NSMutableArray *arrayInp;
}
@end

@implementation QuickSortNSString

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    arrayInp = [[NSMutableArray alloc] init];
    
    [arrayInp addObject:@"Nguyen Minh Khue"];
    [arrayInp addObject:@"Ngo Xuan Giang"];
    [arrayInp addObject:@"Nguyen Hoang Nam"];
    [arrayInp addObject:@"Pham The Vuong"];
    [arrayInp addObject:@"Nguyen Thanh Trung"];
    [arrayInp addObject:@"Hoang Tuan Anh"];
    [arrayInp addObject:@"Nguyen Van Tu"];
    [arrayInp addObject:@"Pham Manh Tung"];
    [arrayInp addObject:@"Nguyen Thanh Tung"];
 
    [self writeln:@"Mang truoc khi QuickSort"];
    
    for (int pt=0;pt<arrayInp.count;pt++) {
        
        chuoi = [NSString stringWithFormat:@"%i. %@ ",pt+1,[arrayInp objectAtIndex:pt]];
        [self writeln:chuoi];
        
    }
    
    NSArray * OutputQuickSort = [[NSArray alloc] init];
    OutputQuickSort = [self quickSort:arrayInp];
    
    
    [self writeln:@"---------------------"];
    
    [self writeln:@"Mang sau khi QuickSort"];
    
    for (int pt=0;pt<OutputQuickSort.count;pt++) {
        
        chuoi = [NSString stringWithFormat:@"%i. %@ ",pt+1, [OutputQuickSort objectAtIndex:pt]];
        [self writeln:chuoi];
    
    }
}

-(NSArray *)quickSort:(NSMutableArray *)unsortedDataArray
{
    NSComparisonResult compareResult;
    NSMutableArray *lessArray = [[NSMutableArray alloc] init];
    NSMutableArray *greaterArray =[[NSMutableArray alloc] init];
    if ([unsortedDataArray count] <1)
    {
        return nil;
    }
    int randomPivotPoint = arc4random() % [unsortedDataArray count];
    NSString *pivotValue = [unsortedDataArray objectAtIndex:randomPivotPoint];
    [unsortedDataArray removeObjectAtIndex:randomPivotPoint];
    for (NSString *num in unsortedDataArray)
    {
        compareResult = [num compare:pivotValue];
        
        if (compareResult== NSOrderedAscending)
        {
            [lessArray addObject:num];
        }
        else //(compareResult == NSOrderedSame) && (compareResult == NSOrderedDescending)
        {
            [greaterArray addObject:num];
        }
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    return sortedArray;
}

@end

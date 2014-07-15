//
//  PNTestViewController.m
//  lineChart
//
//  Created by pincution on 14-7-15.
//  Copyright (c) 2014年 pincution@gmail.com. All rights reserved.
//

#import "PNTestViewController.h"
#import "PNLineChartView.h"
#import "PNPlot.h"

@interface PNTestViewController ()
@property (strong, nonatomic) IBOutlet PNLineChartView *lineChartView;

@end

@implementation PNTestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // test line chart
    NSArray* plottingDataValues1 =@[@22, @33, @12, @23,@43, @32,@53, @33, @54,@55, @43];
    NSArray* plottingDataValues2 =@[@24, @23, @22, @20,@53, @22,@33, @33, @54,@58, @43];

    self.lineChartView.max = 58;
    self.lineChartView.min = 12;
    
    
    self.lineChartView.interval = (self.lineChartView.max-self.lineChartView.min)/5;
    
    NSMutableArray* yAxisValues = [@[] mutableCopy];
    for (int i=0; i<6; i++) {
        NSString* str = [NSString stringWithFormat:@"%.2f", self.lineChartView.min+self.lineChartView.interval*i];
        [yAxisValues addObject:str];
    }
    
    self.lineChartView.xAxisValues = @[@"1", @"2", @"3",@"4", @"5", @"6",@"7", @"8", @"9",@"10", @"11"];
    self.lineChartView.yAxisValues = yAxisValues;
    self.lineChartView.axisLeftLineWidth = 39;
    
    
    PNPlot *plot1 = [[PNPlot alloc] init];
    plot1.plottingValues = plottingDataValues1;
    
    plot1.lineColor = [UIColor blueColor];
    plot1.lineWidth = 0.5;
    
    [self.lineChartView addPlot:plot1];

    
    PNPlot *plot2 = [[PNPlot alloc] init];
    
    plot2.plottingValues = plottingDataValues2;
    
    plot2.lineColor = [UIColor redColor];
    plot2.lineWidth = 1;
    
    [self.lineChartView  addPlot:plot2];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

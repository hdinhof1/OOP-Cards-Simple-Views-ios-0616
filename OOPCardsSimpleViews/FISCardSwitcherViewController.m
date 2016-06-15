//  FISCardSwitcherViewController.m

#import "FISCardSwitcherViewController.h"

@interface FISCardSwitcherViewController ()
@property (weak, nonatomic) IBOutlet UILabel *upperLeftLabel;

@property (weak, nonatomic) IBOutlet UILabel *bottomRightLabel;

@property (weak, nonatomic) IBOutlet UILabel *centerLabel;

@end

@implementation FISCardSwitcherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.threeOfSpades = [[FISCard alloc] initWithSuit:@"♠️"
                                                  rank:@"3"];
    self.fourOfClubs = [[FISCard alloc] initWithSuit:@"♣️"
                                                rank:@"4"];
    self.eightOfDiamonds = [[FISCard alloc] initWithSuit:@"♦️"
                                                    rank:@"8"];
    self.tenOfHearts = [[FISCard alloc] initWithSuit:@"♥️"
                                                rank:@"10"];
}
-(void)updateAllThreeLabels:(NSString *)cardLabel {
    self.upperLeftLabel.text = cardLabel;
    self.bottomRightLabel.text = cardLabel;
    self.centerLabel.text = cardLabel;
}

- (IBAction)threeOfSpadesIsPressed:(id)sender {
    [self updateAllThreeLabels:self.threeOfSpades.cardLabel];
    //[self updateAllThreeLabels:@"♠️3"]; old way
}
- (IBAction)fourOfClubsIsTapped:(id)sender {
    [self updateAllThreeLabels:self.fourOfClubs.cardLabel];
}
- (IBAction)eightOfDiamondsIsTapped:(id)sender {
    [self updateAllThreeLabels:self.eightOfDiamonds.cardLabel];
}

- (IBAction)tenOfHeartsIsTapped:(id)sender {
    [self updateAllThreeLabels:self.tenOfHearts.cardLabel];
}


@end

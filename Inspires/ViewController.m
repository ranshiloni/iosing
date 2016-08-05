//  ViewController.m
//  Inspire
//
//  Created by Ran Shiloni on 7/21/16.
//  Copyright © 2016 Ran Shiloni. All rights reserved.
//

#import "ViewController.h"
#import "stdlib.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController {
    NSArray *sentences;
    NSString *text;
    NSInteger inti;
}

- (IBAction)buttonPress:(UIButton *)sender {
        _textView.text = [sentences objectAtIndex:arc4random_uniform((int)sentences.count)];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    sentences = @[@"Bring energy to what you read and do",
                  @"This life won't last forever.",
                  @"If I was not afraid, what would I do?",
                  @"What is the intention behind what you do?",
                  @"Like a lion placed in a paper cage, human beings are most trapped by the illusions of their own mind.",
                  @"The best predictor to a life well lived is the quality of the relationships ones have.",
                  @"Don't fall into the trap of winning other people's approval. Live life from a wholehearted feeling of I am enough. Love yourself. It doesn’t mean to stop trying to improve oneself, but doing so from a place of feeling already whole, rather than a sense of emptiness.",
                  @"Don’t be afraid to fail, be afraid not to try.",
                  @"Don't do nothing unless you're all in it",
                  @"Live for the day",
                  @"The less you need the happier you become",
                  @"Stop comparing yourself to others. The race is long, and at the end, it's only with yourself.",
                  @"Better identify distractions",];
    unsigned index = arc4random() % sentences.count; NSLog(@"%u",index);
    _textView.text = [sentences objectAtIndex:index];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

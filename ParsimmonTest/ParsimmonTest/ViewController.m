//
//  ViewController.m
//  ParsimmonTest
//
//  Created by 杨启晖 on 15/3/1.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"
#import "Parsimmon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ParsimmonTokenizer *tokenizer = [[ParsimmonTokenizer alloc] init];
    NSArray *tokens = [tokenizer tokenizeWordsInText:@"The quick brown fox jumps over the lazy dog"];
    NSLog(@"%@", tokens);
    
    ParsimmonTagger *tagger = [[ParsimmonTagger alloc] init];
    NSArray *taggedTokens = [tagger tagWordsInText:@"The quick brown fox jumps over the lazy dog"];
    NSLog(@"%@", taggedTokens);
    
    ParsimmonLemmatizer *lemmatizer = [[ParsimmonLemmatizer alloc] init];
    NSArray *lemmatizedTokens = [lemmatizer lemmatizeWordsInText:@"Diane, I'm holding in my hand a small box of chocolate bunnies."];
    NSLog(@"%@", lemmatizedTokens);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
